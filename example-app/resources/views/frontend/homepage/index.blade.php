@extends('frontend.layouts.default')

@section('content')
    <section class="section_slider">
        <div class="home-slider swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a href="#" class="clearfix" title="Slider 1">
                        <picture>
                            <source media="(min-width: 1200px)" srcset="{{ Voyager::image($banner->image) }}">
                            <source media="(min-width: 992px)" srcset="{{ Voyager::image($banner->image) }}">
                            <source media="(min-width: 569px)" srcset="{{ Voyager::image($banner->image) }}">
                            <source media="(max-width: 567px)" srcset="{{ Voyager::image($banner->image) }}">
                            <img width="1920" height="810" src="{{ Voyager::image($banner->image) }}"
                                class="img-responsive" />
                        </picture>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <script>
        var swiper = new Swiper('.home-slider', {
            autoplay: false,
            pagination: {
                el: '.home-slider .swiper-pagination',
                clickable: true,
            },
        });
    </script>
    <section class="section_category">
        <div class="container">
            <div class="cate-list row">

            </div>
        </div>
    </section>

    <section class="section_intro">
        <div class="container">
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-12 col-intro-1">
                    <div class="banner_intro">
                        <a href="#" title="{{ $home_page->title }}">
                            <img class="lazyload" style="width: 90%;
                            /* height: 80px; */
                            border: double 1em transparent;
                            border-radius: 30px;
                            background-image: linear-gradient(white, white), linear-gradient(to right, green, gold);
                            background-origin: border-box;
                            background-clip: content-box, border-box;
                        }"
                                src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
                                data-src="{{ Voyager::image($home_page->image) }}" alt="{{ $home_page->title }}" />
                        </a>
                    </div>
                </div>
                <div class="col-lg-6 col-12 col-intro-2">
                    <div class="title_module_main no-bg clearfix">
                        <h3>
                            <span>Về Bắc Hà</span>
                        </h3>
                        <h2>
                            <span>{{ $home_page->title }}</span>
                        </h2>
                    </div>
                    <div class="contentpage clearfix">
                        {!! $home_page->body !!}

                    </div>
                    <div class="img_intro_list">
                        <div class="intro_img_swiper swiper-container">
                            <div class="swiper-wrapper">
                                {{-- @dd($home_page); --}}
                                @php
                                    $images = json_decode($home_page->MultiImage);
                                    // dd($images);
                                @endphp
                                @foreach ($images as $item)
                                    {{-- @dd($item); --}}
                                    <div class="swiper-slide">
                                        <a href="#" title="{{ setting('site.title') }}">
                                            <img src="{{ Voyager::image($item) }}"  style="height: 150px;"
                                                alt="{{ setting('site.title') }}" class="img-responsive" />
                                        </a>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        var swiperwish = new Swiper('.intro_img_swiper', {
            slidesPerView: 3,
            loop: false,
            grabCursor: true,
            spaceBetween: 20,
            roundLengths: true,
            slideToClickedSlide: false,
            autoplay: false,
            breakpoints: {
                300: {
                    slidesPerView: 1,
                    spaceBetween: 0
                },
                500: {
                    slidesPerView: 1,
                    spaceBetween: 0
                },
                640: {
                    slidesPerView: 2,
                    spaceBetween: 0
                },
                768: {
                    slidesPerView: 3,
                    spaceBetween: 20
                },
                991: {
                    slidesPerView: 3,
                    spaceBetween: 20
                },
                1200: {
                    slidesPerView: 3,
                    spaceBetween: 20
                }
            }
        });
    </script>

    <section class="section_tab_product section_product_tab_1">
        <div class="bg_module">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-12">
                        <div class="not-dqtab e-tabs ajax-tab-1 ajax" data-section="ajax-tab-1" data-view="grid_1">
                            <div class="title_modules title_module_main clearfix">
                                <h2 class="title_tab">
                                    <span>Sản phẩm <h1></h1></span>
                                </h2>
                                <ul class="nav-tab">
                                    <li class="tab-link tabs-title tabtitle1 ajax has-content current" data-tab="tab-1"
                                        data-url="san-pham-noi-bat">
                                        <h4>Tất cả</h4>
                                    </li>
                                    @foreach ($collections as $collection)
                                        <li class="tab-link tabs-title tabtitle1 ajax " data-tab="{{ $collection->slug }}"
                                            data-url="cu-qua-cac-loai">
                                            {{-- <a href="{{ route('collections.collection', $collection->slug) }}"><h4>{{$collection->title}}</h4></a> --}}
                                            <h4>{{ $collection->title }}</h4>
                                        </li>
                                    @endforeach
                                </ul>
                            </div>
                            <div class="tab-container">
                                <div class="tab-item tab-content tab-1 current">
                                    <div class="contentfill">
                                        <div class="swiper-container">
                                            <div class="swipertab swiper-tab-top swiper-first">
                                                <div class="swiper-wrapper">
                                                    {{-- @dd($products['value']); --}}
                                                    @foreach ($products as $product)
                                                        {{-- @dd($product); --}}
                                                        <div class="swiper-slide">
                                                            <form action="https://template-big-green.mysapo.net/cart/add"
                                                                method="post"
                                                                class="wishItem variants product-box product-block-item"
                                                                data-cart-form data-id="product-actions-24840825"
                                                                enctype="multipart/form-data">
                                                                <div class="product-thumbnail">
                                                                    <a class="image_thumb scale_hover product-transition"
                                                                        href="{{ route('products.show', $product->slug) }}"
                                                                        title="{{ $product['title'] }}">
                                                                        <img class="lazyload"
                                                                            src="{{ Voyager::image($product->image) }}"
                                                                            data-src="{{ Voyager::image($product->image) }}"
                                                                            alt="{{ $product['title'] }}">
                                                                    </a>
                                                                </div>
                                                                <div class="product-info">
                                                                    <div class="product-content">
                                                                        <h3 class="product-name"><a
                                                                                href="{{ route('products.show', $product->slug) }}"
                                                                                title="{{ $product['title'] }}">{{ $product['title'] }}</a>
                                                                        </h3>
                                                                        <div class="blockprice">
                                                                            <div class="price-box">
                                                                                {{ number_format($product['price']) }}đ
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="product-action d-xl-flex d-none">
                                                                </div>
                                                            </form>
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
								@foreach ($collections as $collection)
									<div class="tab-item tab-content {{ $collection->slug }} ">
										<div class="products-view products-view-grid list_hover_pro">
											<div class="row">
												<?php
													$productCollection = \App\Product::where('category_id', $collection->id)->latest()->get();
													// dd($productCollection);
												?>
												{{-- @dd($products['value']); --}}
												@foreach ($productCollection as $product)
													{{-- @dd($product); --}}
													<div class="col-6 col-md-3 col-lg-3 col-xl-3">
														<form action="https://template-big-green.mysapo.net/cart/add"
															method="post"
															class="wishItem variants product-box product-block-item"
															data-cart-form data-id="product-actions-24840825"
															enctype="multipart/form-data">
															<div class="product-thumbnail">
																<a class="image_thumb scale_hover product-transition"
																	href="{{ route('products.show', $product->slug) }}"
																	title="{{ $product['title'] }}">
																	<img class="lazyload"
																		src="{{ Voyager::image($product->image) }}"
																		data-src="{{ Voyager::image($product->image) }}"
																		alt="{{ $product['title'] }}">
																</a>
															</div>
															<div class="product-info">
																<div class="product-content">
																	<h3 class="product-name"><a
																			href="{{ route('products.show', $product->slug) }}"
																			title="{{ $product['title'] }}">{{ $product['title'] }}</a>
																	</h3>
																	<div class="blockprice">
																		<div class="price-box">
																			{{ number_format($product['price']) }}đ
																		</div>
																	</div>
																</div>
															</div>
															<div class="product-action d-xl-flex d-none">
															</div>
														</form>
													</div>
												@endforeach


											</div>
										</div>
									</div>
								@endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section_3banner">
        <div class="container">
            <div class="row">
                @php
                    $image = json_decode($middle_home->MultiImage);
                    // dd($image);
                @endphp
                <div class="col col-xl-4 col-lg-4 col-md-4 hidden-xs">
                    <div class="banner_1">
                        <a class="banner_" href="#" title="Banner 1">
                            <img class="lazyload" src="{{ Voyager::image($image[0]) }}"
                                data-src="{{ Voyager::image($image[0]) }}" alt="Banner 1" />
                        </a>
                    </div>
                </div>
                <div class="col col-xl-4 col-lg-4 col-md-4 col-12">
                    <div class="banner_1">
                        <a class="banner_" href="#" title="Banner 2">
                            <img class="lazyload" src="{{ Voyager::image($image[1]) }}"
                                data-src="{{ Voyager::image($image[1]) }}" alt="Banner 2" />
                        </a>
                    </div>
                </div>
                <div class="col col-xl-4 col-lg-4 col-md-4 hidden-xs">
                    <div class="banner_1">
                        <a class="banner_" href="#" title="Banner 3">
                            <img class="lazyload" src="{{ Voyager::image($image[2]) }}"
                                data-src="{{ Voyager::image($image[2]) }}" alt="Banner 3" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section_tab_product section_product_tab_2">
        <div class="bg_module">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-12">
                        <div class="not-dqtab e-tabs ajax-tab-2 ajax" data-section="ajax-tab-2" data-view="grid_2">
                            <div class="title_modules title_module_main clearfix">
                                <h2 class="title_tab">
                                    <span>Cây trồng</span>
                                </h2>
                            </div>
                            <div class="tab-container">
                                <div class="tab-item tab-content tab-1 current">
                                    <div class="contentfill">
                                        <div class="swiper-container">
                                            <div class="swipertab swiper-tab-top swiper-first">
                                                <div class="swiper-wrapper">
                                                    @foreach ($crops as $crop)
                                                        {{-- @dd( $crop); --}}
                                                        <div class="swiper-slide ajax-carousel">
                                                            <form action="" method="post"
                                                                class="wishItem variants product-box product-block-item"
                                                                data-cart-form data-id="product-actions-24840652"
                                                                enctype="multipart/form-data">
                                                                <div class="product-thumbnail">
                                                                    <a class="image_thumb scale_hover product-transition"
                                                                        href="{{ route('crops.show', $crop->slug) }}"
                                                                        title="{{ $crop['title'] }}">
                                                                        <img class="lazyload"
                                                                            src="{{ Voyager::image($crop->image) }}"
                                                                            data-src="{{ Voyager::image($crop->image) }}"
                                                                            alt="{{ $crop['title'] }}">
                                                                    </a>

                                                                </div>
                                                                <div class="product-info">
                                                                    <div class="product-content">
                                                                        <h3 class="product-name"><a
                                                                                href="{{ route('crops.show', $crop->slug) }}"
                                                                                title="{{ $crop['title'] }}">{{ $crop['title'] }}</a>
                                                                        </h3>
                                                                        <div class="blockprice">
                                                                            <div class="price-box">
                                                                                {{ number_format($crop['price']) }}đ
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                            </form>
                                                        </div>
                                                    @endforeach

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <section class="section_blog" style="margin-top: 50px">
        <div class="container">
            <div class="block-title title_module_main clearfix">
                <h2>
                    <a href="{{ route('news') }}" title="Tin tức nông nghiệp">Bài viết tin tức</a>
                </h2>
            </div>
            <div class="block-blog">
                <div class="blog-swiper swiper-container">
                    <div class="swiper-wrapper">
                        @foreach ($posts as $new)
                            <div class="swiper-slide">
                                <div class="item_blog_base">
                                    <a class="thumb" href="{{ route('news.show', $new->slug) }}"
                                        title="{{ $new['title'] }}">
                                        <img src="{{ Voyager::image($new->image) }}"
                                            data-src="{{ Voyager::image($new->image) }}" alt="{{ $new['title'] }}"
                                            class="lazyload img-responsive" />
                                    </a>
                                    <div class="content_blog clearfix">
                                        <h3><a href="{{ route('news.show', $new->slug) }}" title="{{ $new['title'] }}"
                                                class="a-title">{{ $new['title'] }}</a></h3>
                                        <p>
                                            {{-- @dd($new); --}}
                                            {{ $new['excerpt'] }}
                                        </p>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script>
        var swiperwish = new Swiper('.blog-swiper', {
            slidesPerView: 3,
            loop: false,
            grabCursor: true,
            spaceBetween: 30,
            roundLengths: true,
            slideToClickedSlide: false,
            autoplay: false,
            breakpoints: {
                300: {
                    slidesPerView: 1.3,
                    spaceBetween: 30
                },
                500: {
                    slidesPerView: 1.3,
                    spaceBetween: 30
                },
                640: {
                    slidesPerView: 1.3,
                    spaceBetween: 30
                },
                768: {
                    slidesPerView: 2,
                    spaceBetween: 30
                },
                991: {
                    slidesPerView: 3,
                    spaceBetween: 30
                },
                1200: {
                    slidesPerView: 3,
                    spaceBetween: 30
                }
            }
        });
    </script>

    <script>
        (function($) {
            "use strict";
            $.ajaxChimp = {
                responses: {
                    "We have sent you a confirmation email": 0,
                    "Please enter a valueggg": 1,
                    "An email address must contain a single @": 2,
                    "The domain portion of the email address is invalid (the portion after the @: )": 3,
                    "The username portion of the email address is invalid (the portion before the @: )": 4,
                    "This email address looks fake or invalid. Please enter a real email address": 5
                },
                translations: {
                    en: null
                },
                init: function(selector, options) {
                    $(selector).ajaxChimp(options)
                }
            };
            $.fn.ajaxChimp = function(options) {
                $(this).each(function(i, elem) {
                    var form = $(elem);
                    var email = form.find("input[type=email]");
                    var label = form.find("label[for=" + email.attr("id") + "]");
                    var settings = $.extend({
                        url: form.attr("action"),
                        language: "en"
                    }, options);
                    var url = settings.url.replace("/post?", "/post-json?").concat("&c=?");
                    form.attr("novalidate", "true");
                    email.attr("name", "EMAIL");
                    form.submit(function() {
                        var msg;

                        function successCallback(resp) {
                            if (resp.result === "success") {
                                msg = "We have sent you a confirmation email";
                                label.removeClass("error").addClass("valid");
                                email.removeClass("error").addClass("valid")
                            } else {
                                email.removeClass("valid").addClass("error");
                                label.removeClass("valid").addClass("error");
                                var index = -1;
                                try {
                                    var parts = resp.msg.split(" - ", 2);
                                    if (parts[1] === undefined) {
                                        msg = resp.msg
                                    } else {
                                        var i = parseInt(parts[0], 10);
                                        if (i.toString() === parts[0]) {
                                            index = parts[0];
                                            msg = parts[1]
                                        } else {
                                            index = -1;
                                            msg = resp.msg
                                        }
                                    }
                                } catch (e) {
                                    index = -1;
                                    msg = resp.msg
                                }
                            }
                            if (settings.language !== "en" && $.ajaxChimp.responses[msg] !==
                                undefined && $.ajaxChimp.translations && $.ajaxChimp.translations[
                                    settings.language] && $.ajaxChimp.translations[settings
                                    .language][$.ajaxChimp.responses[msg]]) {
                                msg = $.ajaxChimp.translations[settings.language][$.ajaxChimp
                                    .responses[msg]
                                ]
                            }
                            label.html(msg);
                            label.show(2e3);
                            if (settings.callback) {
                                settings.callback(resp)
                            }
                        }
                        var data = {};
                        var dataArray = form.serializeArray();
                        $.each(dataArray, function(index, item) {
                            data[item.name] = item.value
                        });
                        $.ajax({
                            url: url,
                            data: data,
                            success: successCallback,
                            dataType: "jsonp",
                            error: function(resp, text) {
                                console.log("mailchimp ajax submit error: " + text)
                            }
                        });
                        var submitMsg = "Submitting...";
                        if (settings.language !== "en" && $.ajaxChimp.translations && $.ajaxChimp
                            .translations[settings.language] && $.ajaxChimp.translations[settings
                                .language]["submit"]) {
                            submitMsg = $.ajaxChimp.translations[settings.language]["submit"]
                        }
                        label.html(submitMsg).show(2e3);
                        return false
                    })
                });
                return this
            }
        })(jQuery);
    </script>
@endsection
