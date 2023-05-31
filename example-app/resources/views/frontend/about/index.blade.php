@extends('frontend.layouts.default')

@section('content')
    <div class="breadcrumb_background" style="background-image: url({{ Voyager::image(setting('site.breadcrumb')) }})">
        <div class="title_full">
            <div class="container a-center">
                <h1 class="title_page">Giới thiệu</h1>
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
                            <li><strong><span>Giới thiệu</span></strong></li>

                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <section class="page">
        <div class="container">
            <div class="pg_page padding-top-15">
                <div class="row">
                    <div class="col-12">
                        <div class="page-title category-title">
                            <h1 class="title-head hidden"><a href="#">Giới thiệu</a></h1>
                        </div>
                        <div class="content-page rte" style="padding-bottom: 50px; font-size: 20px;">
                            <p style="font-size: 20px;">{!! $about->body !!}</p>
                        </div>
                    </div>
                </div>
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
