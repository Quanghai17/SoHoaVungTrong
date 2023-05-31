@extends('frontend.layouts.default')

@section('content')
    <div class="breadcrumb_background" style="background-image: url({{ Voyager::image(setting('site.breadcrumb')) }})">
        <div class="title_full">
            <div class="container a-center">
                <p class="title_page">Tìm kiếm</p>
            </div>
        </div>
        <section class="bread-crumb">
            <span class="crumb-border"></span>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-12 a-left">
                        <ul class="breadcrumb">
                            <li class="home">
                                <a><span>Trang chủ</span></a>
                                <span class="mr_lr"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                                        <!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                        <path
                                            d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z" />
                                    </svg></span>
                            </li>

                            <li>
                                <a><span>Tin tức</span></a>
                                <span class="mr_lr"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                                        <!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                        <path
                                            d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z" />
                                    </svg></span>
                            </li>
                            <li><strong><span>{{ $new['title'] }}</span></strong></li>

                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <section class="blogpage">
        <div class="container layout-article" itemscope itemtype="https://schema.org/Article">
            <div class="bg_blog">

                <article class="article-main" style="padding-bottom: 100px">
                    <div class="row">
                        <div class="right-content col-xl-8 col-lg-8 col-12">
                            <div class="article-details">
                                <h1 class="article-title"><a href="">{{ $new['title'] }}</a></h1>
                                <div class="social-media" data-permalink="">
                                    <label style="font-size: 20px;">Chia sẻ: </label>
                                    <a target="_blank"
                                        href="http://www.facebook.com/sharer.php?u={{ url('/news', $new->slug) }}"
                                        class="share-facebook" title="Chia sẻ lên Facebook">
                                        <svg xmlns="http://www.w3.org/2000/svg" style="fill: #0384ff;
                                        width: 24px;
                                        height: 24px;"
                                            viewBox="0 0 512 512"><!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                            <path
                                                d="M504 256C504 119 393 8 256 8S8 119 8 256c0 123.78 90.69 226.38 209.25 245V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.28c-30.8 0-40.41 19.12-40.41 38.73V256h68.78l-11 71.69h-57.78V501C413.31 482.38 504 379.78 504 256z" />
                                        </svg>
                                    </a>
                                    <a target="_blank"
                                    href="http://twitter.com/share?url={{ url('/news', $new->slug) }}"
                                        class="share-pinterest" title="Chia sẻ lên pinterest">
                                        <svg xmlns="http://www.w3.org/2000/svg" style="fill: #af0f31;
                                        width: 24px;
                                        height: 24px;"
                                            viewBox="0 0 496 512"><!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                            <path
                                                d="M496 256c0 137-111 248-248 248-25.6 0-50.2-3.9-73.4-11.1 10.1-16.5 25.2-43.5 30.8-65 3-11.6 15.4-59 15.4-59 8.1 15.4 31.7 28.5 56.8 28.5 74.8 0 128.7-68.8 128.7-154.3 0-81.9-66.9-143.2-152.9-143.2-107 0-163.9 71.8-163.9 150.1 0 36.4 19.4 81.7 50.3 96.1 4.7 2.2 7.2 1.2 8.3-3.3.8-3.4 5-20.3 6.9-28.1.6-2.5.3-4.7-1.7-7.1-10.1-12.5-18.3-35.3-18.3-56.6 0-54.7 41.4-107.6 112-107.6 60.9 0 103.6 41.5 103.6 100.9 0 67.1-33.9 113.6-78 113.6-24.3 0-42.6-20.1-36.7-44.8 7-29.5 20.5-61.3 20.5-82.6 0-19-10.2-34.9-31.4-34.9-24.9 0-44.9 25.7-44.9 60.2 0 22 7.4 36.8 7.4 36.8s-24.5 103.8-29 123.2c-5 21.4-3 51.6-.9 71.2C65.4 450.9 0 361.1 0 256 0 119 111 8 248 8s248 111 248 248z" />
                                        </svg>
                                    </a>

                                </div>
                               
                                        {{-- <ul>
                                            <li>
                                                <a href="http://www.facebook.com/sharer.php?u={{ url('/news', $new->slug) }}"
                                                    target="_blank">fb<i class='bx bxl-facebook'></i></a>
                                                <a href="http://twitter.com/share?url={{ url('/news', $new->slug) }}"
                                                    target="_blank">tw
                                                    <i class='bx bxl-twitter'></i>
                                                </a>
                                                <a href="http://www.linkedin.com/shareArticle?mini=true&url={{ url('/news', $new->slug) }}"
                                                    target="_blank">linkedin
                                                    <i class='bx bxl-linkedin'></i>
                                                </a>
                                            </li>
                                        </ul> --}}
                                   
                                <div class="article-content">
                                    <div class="rte">
                                        <p>{!! $new->body !!}</p>
                                    </div>
                                </div>
                                
                            </div>


                        </div>
                        <div class="blog_left_base col-xl-4 col-lg-4 col-12 order-lg-2">
                            <div class="blog_noibat">



                                <h2 class="h2_sidebar_blog">
                                    <a href="" title="Bài viết nổi bật">Bài viết nổi bật</a>
                                </h2>
                                <div class="blog_content">
                                    @foreach ($recentNew as $new)
                                        <div class="item clearfix">
                                            <div class="post-thumb">
                                                <a class="image-blog scale_hover" href="{{ route('news.show', $new->slug) }}"
                                                    title="{{ $new['title'] }}">

                                                    <img class="img_blog lazyload" src="{{ Voyager::image($new->image) }}"
                                                        data-src="{{ Voyager::image($new->image) }}"
                                                        alt="{{ $new['title'] }}">

                                                </a>
                                            </div>
                                            <div class="contentright">
                                                <h3><a title="{{ $new['title'] }}"
                                                        href="{{ route('news.show', $new->slug) }}">{{ $new['title'] }}</a>
                                                </h3>

                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
            </div>
        </div>
    </section>
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
