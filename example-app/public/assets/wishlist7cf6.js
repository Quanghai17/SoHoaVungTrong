var Ego = {};
Ego.General = {
	init: function() {
		Ego.Wishlist.init();
	},
}
Ego.Wishlist = {
	init: function() {
		this.setWishlistProductLoop();
		Ego.Wishlist.wishlistProduct();
	},
	setWishlistProductLoop: function() {
		$('body').on('click', '.remove-wishlist', function(e) {
			Ego.Wishlist.removeWishlist($(this).attr('data-wish'));
		})
		$('body').on('click', '.setWishlist', function(e) {
			//debugger;
			e.preventDefault();
			if ($(this).hasClass('active')) {
				Ego.Wishlist.removeWishlist($(this).attr('data-wish'));
				var InfoText = 'Bạn vừa bỏ sản phẩm ra khỏi mục yêu thích.';
				InfoNoti(InfoText);
			} else {
				var phand = [];
				var handle = $(this).attr('data-wish');
				if (document.cookie.indexOf('ego_wishlist_products') !== -1) {
					var las = Cookies.getJSON('ego_wishlist_products');
					if ($.inArray(handle, las) === -1) {
						phand = [handle];
						for (var i = 0; i < las.length; i++) {
							phand.push(las[i]);
							if (phand.length > 100) {
								break;
							}
						}
						Cookies.set('ego_wishlist_products', phand, {
							expires: 15,
							sameSite: 'None',
							secure: true
						});
					}
				} else {
					phand = [handle];
					Cookies.set('ego_wishlist_products', phand, {
						expires: 15,
						sameSite: 'None',
						secure: true
					});
				}
				Ego.Wishlist.wishlistProduct();
				var SuccessText = "Bạn vừa thêm 1 sản phẩm vào mục yêu thích thành công bấm <a style='color:#2196f3' href='/danh-sach-yeu-thich'>vào đây</a> để tới trang yêu thích";
				SuccessNoti(SuccessText);
			}
		})
	},
	wishlistProduct: function() {
		if ($('#sidebar-all .sidebar-all-wrap-right[data-type="wishlist"] .sidebar-all-wrap-right-main-list').length > 0) {
			if (document.cookie.indexOf('ego_wishlist_products') !== -1) {
				$('#sidebar-all .sidebar-all-wrap-right[data-type="wishlist"] .sidebar-all-wrap-right-main-list').html('')
				var last_wishlist_pro_array = Cookies.getJSON('ego_wishlist_products');
				Ego.Wishlist.activityWishlist();
				var recentview_promises = [];
				for (var i = 0; i < 100; i++) {
					if (typeof last_wishlist_pro_array[i] == 'string') {
						var promise = new Promise(function(resolve, reject) {
							$.ajax({
								url: '/products/' + last_wishlist_pro_array[i] + '?view=wish',
								async: false,
								success: function(product) {
									resolve({
										error: false,
										data: product
									});
								},
								error: function(err) {
									if (err.status === 404) {
										try {
											var u = ((this.url.split('?'))[0]).replace('/products/', '');
											resolve({
												error: true,
												handle: u
											});
										} catch (e) {
											resolve({
												error: false,
												data: ''
											})
										}
									} else {
										resolve({
											error: false,
											data: ''
										});
									}
								}
							})
						});
						recentview_promises.push(promise);

					}
				}
				Promise.all(recentview_promises).then(function(values) {
					if (values.length > 0) {
						var x = [];
						setTimeout(function() {
							$('.headerWishlistCount').html(values.length)
						}, 500)
						$.each(values, function(i, v) {
							if (v.error) {
								x.push(v.handle);
							} else {
								$('#sidebar-all .sidebar-all-wrap-right[data-type="wishlist"] .page-wishlist').append(v.data);
								$('#sidebar-all .sidebar-all-wrap-right[data-type="wishlist"] .page-wishlist').show();
								awe_lazyloadImage();
								//theme.init(); // gọi lại ajax cart
							}
							console.log(values.length);

						});
						if (x.length > 0) {
							var new_last_viewed_pro_array = [];
							$.each(last_wishlist_pro_array, function(i, v) {
								if ($.inArray(v, x) === -1) {
									new_last_viewed_pro_array.push(v);
								}

							})
							if (new_last_viewed_pro_array.length > 0) {
								Cookies.set('last_viewed_products', new_last_viewed_pro_array, {
									expires: 180,
									sameSite: 'None',
									secure: true
								});
							}
						}
					} else {
						$('.headerWishlistCount').html('0')
						$('#sidebar-all .sidebar-all-wrap-right[data-type="wishlist"] .sidebar-all-wrap-right-main-list').append('<div class="sidebar-all-wrap-right-main-top-error col-12"><span>Bạn chưa có sản phẩm yêu thích, <a href="/collections/all" style="color: #007bff;">vào đây</a> để thêm thật nhiều sản phẩm vào yêu thích nào. </span></div>')
					}
				});
			} else {
				$('#sidebar-all .sidebar-all-wrap-right[data-type="wishlist"] .sidebar-all-wrap-right-main-list').append('<div class="sidebar-all-wrap-right-main-top-error col-12"><span>Bạn chưa có sản phẩm yêu thích, <a href="/collections/all" style="color: #007bff;">vào đây</a> để thêm thật nhiều sản phẩm vào yêu thích nào. </span></div>')
			}
		} else {
			$('#sidebar-all .sidebar-all-wrap-right[data-type="wishlist"] .sidebar-all-wrap-right-main-list').append('<div class="sidebar-all-wrap-right-main-top-error col-12"><span>Bạn chưa có sản phẩm yêu thích, <a href="/collections/all" style="color: #007bff;">vào đây</a> để thêm thật nhiều sản phẩm vào yêu thích nào. </span></div>')
		}
	},
	activityWishlist: function() {
		var last_wishlist_pro_array = Cookies.getJSON('ego_wishlist_products');
		$.each(last_wishlist_pro_array, function(i, v) {
			$('.setWishlist[data-wish="' + v + '"]').html('<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M22.0373 2.9457C20.7959 1.6114 19.0565 0.852197 17.234 0.849383C15.4101 0.851494 13.6688 1.61029 12.4255 2.94485L12.0018 3.3926L11.578 2.94485C9.11101 0.289657 4.95858 0.137174 2.30343 2.6042C2.18578 2.71356 2.07215 2.82714 1.96278 2.94485C-0.654261 5.76765 -0.654261 10.1302 1.96278 12.953L11.3791 22.883C11.7048 23.227 12.2477 23.2417 12.5916 22.9159C12.6029 22.9052 12.6139 22.8943 12.6245 22.883L22.0374 12.953C24.6542 10.1305 24.6542 5.7682 22.0373 2.9457ZM20.7962 11.7718H20.7953L12.0018 21.0466L3.20738 11.7718C1.20811 9.61497 1.20811 6.28199 3.20738 4.12511C5.02296 2.1573 8.09006 2.03392 10.0579 3.8495C10.1534 3.93765 10.2453 4.02957 10.3335 4.12511L11.3791 5.22818C11.7236 5.57054 12.2799 5.57054 12.6245 5.22818L13.6701 4.12597C15.4857 2.15816 18.5528 2.03477 20.5206 3.85035C20.6161 3.9385 20.708 4.03043 20.7962 4.12597C22.8129 6.28627 22.8276 9.62532 20.7962 11.7718Z" fill="#FF0000"/></svg>').addClass('active').attr('title', 'Bỏ yêu thích');
		})
	},

	removeWishlist: function(handle) {
		var phand = [];

		$('a[data-wish="' + handle + '"]').html('<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M22.0373 2.9457C20.7959 1.6114 19.0565 0.852197 17.234 0.849383C15.4101 0.851494 13.6688 1.61029 12.4255 2.94485L12.0018 3.3926L11.578 2.94485C9.11101 0.289657 4.95858 0.137174 2.30343 2.6042C2.18578 2.71356 2.07215 2.82714 1.96278 2.94485C-0.654261 5.76765 -0.654261 10.1302 1.96278 12.953L11.3791 22.883C11.7048 23.227 12.2477 23.2417 12.5916 22.9159C12.6029 22.9052 12.6139 22.8943 12.6245 22.883L22.0374 12.953C24.6542 10.1305 24.6542 5.7682 22.0373 2.9457ZM20.7962 11.7718H20.7953L12.0018 21.0466L3.20738 11.7718C1.20811 9.61497 1.20811 6.28199 3.20738 4.12511C5.02296 2.1573 8.09006 2.03392 10.0579 3.8495C10.1534 3.93765 10.2453 4.02957 10.3335 4.12511L11.3791 5.22818C11.7236 5.57054 12.2799 5.57054 12.6245 5.22818L13.6701 4.12597C15.4857 2.15816 18.5528 2.03477 20.5206 3.85035C20.6161 3.9385 20.708 4.03043 20.7962 4.12597C22.8129 6.28627 22.8276 9.62532 20.7962 11.7718Z" fill="#A1CCA3"/></svg>').removeClass('active').attr('title', 'Thêm vào yêu thích');
		if (document.cookie.indexOf('ego_wishlist_products') !== -1) {
			var las = Cookies.getJSON('ego_wishlist_products');
			var flagIndex = $.inArray(handle, las);
			las.splice(flagIndex, 1)
			Cookies.set('ego_wishlist_products', las, {
				expires: 15,
				sameSite: 'None',
				secure: true
			});
		} else {
			phand = [handle];
			Cookies.set('ego_wishlist_products', phand, {
				expires: 15,
				sameSite: 'None',
				secure: true
			});
		}
		Ego.Wishlist.wishlistProduct(3, 5);
	}
}



Ego.Wishlist.init();