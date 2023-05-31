$(".not-dqtab").each( function(e){
	/*khai báo khởi tạo ban đầu cho 2 kiểu tab*/
	var $this1 = $(this);
	var $this2 = $(this);
	var datasection = $this1.closest('.not-dqtab').attr('data-section');
	$this1.find('.tabs-title:first-child').addClass('current');
	$this1.find('.tab-content').first().addClass('current');
	var view = $this1.closest('.not-dqtab').attr('data-view');
	$this1.find('.tabtitle1.ajax').click(function(){
		var $this2 = $(this),
			tab_id = $this2.attr('data-tab'),
			url = $this2.attr('data-url');
		var etabs = $this2.closest('.e-tabs');
		etabs.find('.tab-viewall').attr('href',url);
		etabs.find('.tabs-title').removeClass('current');
		etabs.find('.tab-content').removeClass('current');
		$this2.addClass('current');
		etabs.find("."+tab_id).addClass('current');
		var active = $(this);
		var left = active.position().left;
		var currScroll = $(this).parent('.nav-tab').scrollLeft();
		var contWidth = $(this).parent('.nav-tab').width() / 2;
		var activeOuterWidth = active.outerWidth() / 2;
		left = left + currScroll - contWidth + activeOuterWidth;

		$(this).parent('.nav-tab').animate({
			scrollLeft: left
		}, 'slow');


		//Nếu đã load rồi thì không load nữa
		if(!$this2.hasClass('has-content')){
			$this2.addClass('has-content');		
			getContentTab(url,"."+ datasection+" ."+tab_id,view);

			$(window).on('load resize', function () {
				resizeImage();
				Ego.Wishlist.wishlistProduct(3, 5);
			});
		}
		resizeImage();
		Ego.Wishlist.wishlistProduct(3, 5);
	});

});

// mobile tab

// Get content cho tab
function getContentTab(url,selector,view){
	if (view == 'grid_1'){
		url = url+"?view=tabload";
	}
	if (view == 'grid_2'){
		url = url+"?view=tabload2";
	}
	var loading = '<div class="text-center load_tab">Đang tải dữ liệu...</div>';
	var fill = $(selector);
	$.ajax({
		type: 'GET',
		url: url,
		beforeSend: function() {
			fill.find('.contentfill').html(loading);
		},
		success: function(data) {
			var content = $(data);
			setTimeout(function(){
				fill.find('.contentfill').html(content.html());
				$(selector+' .swiper-nth').each( function(){
					var swipertab = new Swiper('.swiper-nth', {
						slidesPerColumnFill: 'row',
						direction: 'horizontal',
						slidesPerView: 4,
						spaceBetween: 20,
						slidesPerGroup: 1,
						slidesPerColumn: 2,
						breakpoints: {
							300: {
								slidesPerView: 1.5,
							},
							640: {
								slidesPerView: 1.5,
								spaceBetween: 0
							},
							768: {
								slidesPerView: 3,
								spaceBetween: 20
							},
							991: {
								slidesPerView: 2,
								spaceBetween: 20
							},
							1024: {
								slidesPerView: 4,
								spaceBetween: 20
							},
							1199: {
								slidesPerView: 4,
								spaceBetween: 20
							}
						}
					});
				});
				awe_lazyloadImage();
				resizeImage();
				Ego.Wishlist.wishlistProduct(3, 5);
				var modal = $('.quickview-product');
				var btn = $('.quick-view');
				var span = $('.quickview-close');
				btn.click(function () {
					modal.show();
				});

				span.click(function () {
					modal.hide();
				});

				$(window).on('click', function (e) {
					if ($(e.target).is('.modal')) {
						modal.hide();

					}
				});
				$(selector+' .add_to_cart').click(function(e){	
					e.preventDefault();		
					var $this = $(this);
					var form = $this.parents('form');	
					$.ajax({
						type: 'POST',
						url: '/cart/add.js',
						async: false,
						data: form.serialize(),
						dataType: 'json',
						beforeSend: function() { },
						success: function(line_item) {
							$('.cart-popup-name').html(line_item.title).attr('href', line_item.url, 'title', line_item.title);
							ajaxCart.load();
							$('#popup-cart-desktops, .cart-sidebar, .backdrop__body-backdrop___1rvky').addClass('active');
						},
						cache: false
					});
				});
			},500);
		},
		dataType: "html"
	});
}


var swipertab = new Swiper('.swiper-first', {
	slidesPerColumnFill: 'row',
	direction: 'horizontal',
	slidesPerView: 4,
	spaceBetween: 20,
	slidesPerGroup: 1,
	slidesPerColumn: 2,
	breakpoints: {
		300: {
			slidesPerView: 1.5,
		},
		640: {
			slidesPerView: 1.5,
			spaceBetween: 0
		},
		768: {
			slidesPerView: 3,
			spaceBetween: 20
		},
		991: {
			slidesPerView: 2,
			spaceBetween: 20
		},
		1024: {
			slidesPerView: 4,
			spaceBetween: 20
		},
		1199: {
			slidesPerView: 4,
			spaceBetween: 20
		}
	}
});