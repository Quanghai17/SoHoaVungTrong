@extends('frontend.layouts.default')

@section('content')
    <div class="breadcrumb_background" style="background-image: url({{ Voyager::image(setting('site.breadcrumb')) }})">
        <div class="title_full">
            <div class="container a-center">
                <p class="title_page">Chi tiết sản phẩm</p>
            </div>
        </div>
        <section class="bread-crumb">
            <span class="crumb-border"></span>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-12 a-left">
                        <ul class="breadcrumb">
                            <li class="home">
                                <a href="{{ route('home') }}"><span>Trang chủ</span></a>
                                <span class="mr_lr"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                                        <!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                        <path
                                            d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z" />
                                    </svg></span>
                            </li>
                            <li>
                                <a class="changeurl" href="{{ route('products') }}"><span>Sản phẩm</span></a>
                                <span class="mr_lr"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                                        <!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                        <path
                                            d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z" />
                                    </svg></span>
                            </li>
                            <li><strong><span>{{ $product['title'] }}</span></strong>
                            <li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <section class="product layout-product" itemscope itemtype="https://schema.org/Product" style="margin-bottom: 100px">
        <div class="product-page">
            <div class="product_top details-product">
                <div class="container">
                    <div class="row">
                        <div class="product-detail-left product-images col-12 col-md-6 col-lg-6 col-xl-6">
                            <img height="540" width="540" src="{{ Voyager::image($product->image) }}"
                                                alt="Bơ Trung Đ&#244;ng" data-image="{{ Voyager::image($product->image) }}"
                                                class="img-product img-responsive mx-auto d-block swiper-lazy" />
                        </div>
                        <div class="details-pro col-12 col-md-6 col-lg-6 col-xl-6">
                            <h1 class="title-product">{{ $product['title'] }}</h1>
                            <div class="inventory_quantity">
                            </div>
                            <form enctype="multipart/form-data" data-cart-form id="add-to-cart-form"
                                action="https://template-big-green.mysapo.net/cart/add" method="post" class="form-inline">
                                <div class="price-box clearfix">
                                    <span class="special-price">
                                        <span class="price product-price">Giá bán:
                                            {{ number_format($product['price']) }}đ</span>
                                        {{-- </span> <!-- Giá Khuyến mại -->@dd($product); --}}
                                </div>
                                <div class="form-product">
                                    <div class="box-variant clearfix ">
                                        <input type="hidden" id="one_variant" name="variantId" value="60522594" />
                                    </div>
                                    <div class="product-summary">
                                        <div class="rte">
                                            <em>{{ $product['description'] }}</em>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product_bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-12">
                            <div class="product-tab e-tabs not-dqtab">
                                <ul class="tabs tabs-title clearfix">
                                    <li class="tab-link active" data-tab="#tab-1">
                                        <h3><span>Mô tả sản phẩm</span></h3>
                                    </li>
                                    {{-- <li class="tab-link" data-tab="#tab-2">
                                    <h3><span>Hướng dẫn sử dụng</span></h3>
                                </li> --}}
                                </ul>
                                <div class="tab-float">

                                    <div id="tab-1" class="tab-content active content_extab">
                                        <div class="rte product_getcontent">

                                            <div id="content">
                                                <p>{!! $product['body'] !!}</p>

                                            </div>
                                            <div class="read-more">
                                                <span>Xem thêm <svg aria-hidden="true" focusable="false" data-prefix="far"
                                                        data-icon="chevron-down" role="img"
                                                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512"
                                                        class="svg-inline--fa fa-chevron-down fa-w-14">
                                                        <path fill="currentColor"
                                                            d="M441.9 167.3l-19.8-19.8c-4.7-4.7-12.3-4.7-17 0L224 328.2 42.9 147.5c-4.7-4.7-12.3-4.7-17 0L6.1 167.3c-4.7 4.7-4.7 12.3 0 17l209.4 209.4c4.7 4.7 12.3 4.7 17 0l209.4-209.4c4.7-4.7 4.7-12.3 0-17z"
                                                            class=""></path>
                                                    </svg></span>
                                            </div>


                                        </div>
                                    </div>
                                    {{-- <div id="tab-2" class="tab-content content_extab">
                                    <div class="rte">

                                        Nội dung tùy chỉnh viết ở đây

                                    </div>
                                </div> --}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product_related">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12 col-lg-12 col-12">
                            <div class="productRelate">
                                <div class="block-title">
                                    <h2>
                                        <a href="{{ route('products') }}" title="Sản phẩm tương tự">Sản phẩm tương tự</a>
                                    </h2>
                                </div>
                                <div class="contentfill">
                                    <div class="swiper-container">
                                        <div class="swipertab swiper-tab-top swiper-first">
                                            <div class="swiper-wrapper">
                                                {{-- @dd($products['value']); --}}
                                                @foreach ($recentProduct as $product)
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

                        </div>
                    </div>
                </div>
                <script>
                    var getLimit = 6;
                    var alias = 'bo-trung-dong';

                    function activeTab(obj) {
                        $('.product-tab ul li').removeClass('active');
                        $(obj).addClass('active');
                        var id = $(obj).attr('data-tab');
                        $('.tab-content').removeClass('active');
                        $(id).addClass('active');
                    }
                    $(".tab-content .rte").each(function(e) {
                        if ($('.tab-content .rte #content').height() >= 300) {
                            $('.tab-content').find('.read-more').removeClass('d-none').addClass('more');
                        } else {
                            $('.tab-content').find('.read-more').addClass('d-none');
                        }
                    });

                    jQuery('.read-more').on('click', function(event) {
                        if ($('.read-more').hasClass('more')) {
                            $(this).removeClass('more').addClass('less');
                            $(this).html(
                                '<span>Thu gọn <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="chevron-up" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="svg-inline--fa fa-chevron-up fa-w-14"><path fill="currentColor" d="M6.101 359.293L25.9 379.092c4.686 4.686 12.284 4.686 16.971 0L224 198.393l181.13 180.698c4.686 4.686 12.284 4.686 16.971 0l19.799-19.799c4.686-4.686 4.686-12.284 0-16.971L232.485 132.908c-4.686-4.686-12.284-4.686-16.971 0L6.101 342.322c-4.687 4.687-4.687 12.285 0 16.971z" class=""></path></svg></span>'
                                );
                        } else {
                            $(this).removeClass('less').addClass('more');
                            $(this).html(
                                '<span>Xem thêm <svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="chevron-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="svg-inline--fa fa-chevron-down fa-w-14"><path fill="currentColor" d="M441.9 167.3l-19.8-19.8c-4.7-4.7-12.3-4.7-17 0L224 328.2 42.9 147.5c-4.7-4.7-12.3-4.7-17 0L6.1 167.3c-4.7 4.7-4.7 12.3 0 17l209.4 209.4c4.7 4.7 12.3 4.7 17 0l209.4-209.4c4.7-4.7 4.7-12.3 0-17z" class=""></path></svg></span>'
                                );
                            $('html, body').animate({
                                scrollTop: $('#content').offset().top
                            }, 200);
                        }

                        jQuery(".tab-content .rte").toggleClass("expand");
                    });
                    $('.product-tab ul li').click(function() {
                        activeTab(this);
                        return false;
                    });

                    var galleryThumbs = new Swiper('.gallery-thumbs', {
                        spaceBetween: 4,
                        slidesPerView: 0,
                        direction: 'vertical',
                        freeMode: true,
                        lazy: true,
                        watchSlidesVisibility: true,
                        watchSlidesProgress: true,
                        hashNavigation: true,
                        slideToClickedSlide: true,
                        breakpoints: {
                            300: {
                                slidesPerView: 3,
                                spaceBetween: 10,
                            },
                            500: {
                                slidesPerView: 3,
                                spaceBetween: 10,
                            },
                            640: {
                                slidesPerView: 3,
                                spaceBetween: 10,
                            },
                            768: {
                                slidesPerView: 3,
                                spaceBetween: 10,
                            },
                            1024: {
                                slidesPerView: 3,
                                spaceBetween: 10,
                            },
                            1199: {
                                slidesPerView: 4,
                                spaceBetween: 0,
                            },
                        },
                        navigation: {
                            nextEl: '.swiper_thumbs .swiper-button-next',
                            prevEl: '.swiper_thumbs .swiper-button-prev',
                        },
                    });
                    var galleryTop = new Swiper('.gallery-top', {
                        spaceBetween: 0,
                        lazy: true,
                        hashNavigation: true,
                        thumbs: {
                            swiper: galleryThumbs
                        }
                    });

                    var swiper = new Swiper('.product-relate-swiper', {
                        slidesPerView: 4,
                        loop: false,
                        grabCursor: true,
                        spaceBetween: 30,
                        roundLengths: true,
                        slideToClickedSlide: false,
                        navigation: {
                            nextEl: '.swiper_relate .swiper-button-next',
                            prevEl: '.swiper_relate .swiper-button-prev',
                        },
                        autoplay: false,
                        breakpoints: {
                            300: {
                                slidesPerView: 2,
                                spaceBetween: 15
                            },
                            500: {
                                slidesPerView: 2,
                                spaceBetween: 15
                            },
                            640: {
                                slidesPerView: 3,
                                spaceBetween: 15
                            },
                            768: {
                                slidesPerView: 3,
                                spaceBetween: 30
                            },
                            991: {
                                slidesPerView: 4,
                                spaceBetween: 30
                            },
                            1200: {
                                slidesPerView: 4,
                                spaceBetween: 30
                            }
                        }
                    });

                    $(document).ready(function() {
                        $("#lightgallery").lightGallery({
                            thumbnail: false
                        });
                    });
                </script>
                <div class="sapo-product-reviews-module"></div>
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

            </div>
    </section>
@endsection
