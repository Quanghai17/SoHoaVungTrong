<!DOCTYPE html>
<html lang="en">

<head>
    <!--------------------DEFAULT--------------------->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="canonical" href="{{ request()->url() }}" />
    <meta name="description" content="{{ $description ?? setting('site.description') }}">

    <title>{{ $pageMeta['title'] ?? setting('site.title') }}</title>

    <link rel="icon" href="{{ Voyager::image(setting('site.logo')) }}" type="image/png" sizes="16x16">
    <meta property="og:image"
        content="{{ !empty($og_image) ? Voyager::image($og_image) : Voyager::image(setting('site.logo')) }}" />
    <meta property="og:url" content="{{ \Request::fullUrl() }}" />
    <meta property="og:type" content="Website" />
    <meta property="og:title" content="{{ $title ?? setting('site.title') }}" />
    <meta property="og:description" content="{{ $description ?? setting('site.description') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Build Main CSS -->
	<script defer type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA66KwUrjxcFG5u0exynlJ45CrbrNe3hEc&callback=initMap"></script>
    <link rel="icon" href="{{ Voyager::image(setting('site.logo')) }}" type="image/x-icon" />

    <link rel="preload" as="script" href="{{ asset('assets/jquery7cf6.js') }}" />
    <script src="{{ asset('assets/jquery7cf6.js') }}" type="text/javascript"></script>
    <link rel="preload" as="script" href="{{ asset('assets/swiper7cf6.js') }}" />
    <script src="{{ asset('assets/swiper7cf6.js') }}" type="text/javascript"></script>
    <link rel="preload" as="script" href="{{ asset('assets/lazy7cf6.js') }}" />
    <script src="{{ asset('assets/lazy7cf6.js') }}" type="text/javascript"></script>
    <link rel="preload" as='style' type="text/css" href="{{ asset('assets/main.scss7cf6.css') }}">
    <link rel="preload" as='style' type="text/css" href="{{ asset('assets/index.scss7cf6.css') }}">
    <link rel="preload" as='style' type="text/css" href="{{ asset('assets/404page.scss7cf6.css') }}">
    <link rel="preload" as='style' type="text/css" href="{{ asset('assets/bootstrap-4-3-min7cf6.css') }}">
    <link rel="preload" as='style' type="text/css"
        href="{{ asset('assets/quickviews_popup_cart.scss7cf6.css') }}">
    <link rel="preload" as='style' type="text/css" href="{{ asset('assets/page-wishlist.scss7cf6.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/bootstrap-4-3-min7cf6.css') }}">
    <link href="{{ asset('assets/main.scss7cf6.css') }}" rel="stylesheet" type="text/css" media="all" />
    <link rel="preconnect" href="https://fonts.googleapis.com/">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&amp;display=swap"
        rel="stylesheet">
    <link rel="preload" as='style' type="text/css"
        href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;900&amp;display=swap">
    <link href="{{ asset('assets/index.scss7cf6.css') }}" rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('assets/page-wishlist.scss7cf6.css') }}" rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('assets/quickviews_popup_cart.scss7cf6.css') }}" rel="stylesheet" type="text/css"
        media="all" />
    <link href="{{ asset('assets/breadcrumb_style.scss7cf6.css') }}" rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('assets/collection_style.scss7cf6.css') }}" rel="stylesheet" type="text/css" media="all" />
    <link href="{{ asset('assets/blog_article_style.scss7cf6.css') }}" rel="stylesheet" type="text/css"
        media="all" />
    <link href="{{ asset('assets/product_style.scss7cf6.css') }}" rel="stylesheet" type="text/css"
        media="all" />

    <script>
        var Bizweb = Bizweb || {};
        Bizweb.store = 'template-big-green.mysapo.net';
        Bizweb.id = 448970;
        Bizweb.theme = {
            "id": 894899,
            "name": "Big Green 13-02-2023",
            "role": "main"
        };
        Bizweb.template = 'index';
        if (!Bizweb.fbEventId) Bizweb.fbEventId = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
            var r = Math.random() * 16 | 0,
                v = c == 'x' ? r : (r & 0x3 | 0x8);
            return v.toString(16);
        });
    </script>
    <script>
        (function() {
            function asyncLoad() {
                var urls = [];
                for (var i = 0; i < urls.length; i++) {
                    var s = document.createElement('script');
                    s.type = 'text/javascript';
                    s.async = true;
                    s.src = urls[i];
                    var x = document.getElementsByTagName('script')[0];
                    x.parentNode.insertBefore(s, x);
                }
            };
            window.attachEvent ? window.attachEvent('onload', asyncLoad) : window.addEventListener('load', asyncLoad,
                false);
        })();
    </script>
    <script>
        window.BizwebAnalytics = window.BizwebAnalytics || {};
        window.BizwebAnalytics.meta = window.BizwebAnalytics.meta || {};
        window.BizwebAnalytics.meta.currency = 'VND';
        window.BizwebAnalytics.tracking_url = 's.html';

        var meta = {};


        for (var attr in meta) {
            window.BizwebAnalytics.meta[attr] = meta[attr];
        }
    </script>

    <script>
        $(document).ready(function($) {
            awe_lazyloadImage();
        });

        function awe_lazyloadImage() {
            var ll = new LazyLoad({
                elements_selector: ".lazyload",
                load_delay: 100,
                threshold: 0
            });
        }
        window.awe_lazyloadImage = awe_lazyloadImage;
    </script>

</head>

<body>
    <div class="opacity_menu"></div>

    @include('frontend.layouts.partials.header')
    <div class="bodywrap">
        @yield('content')

        @include('frontend.layouts.partials.footer')
    </div>

    <!-- Plugin JS -->
    <div class="backdrop__body-backdrop___1rvky"></div>
    </div>
    <link rel="preload" as="style" href="{{ asset('assets/ajaxcart.scss7cf6.css') }}" type="text/css">
    <link href="{{ asset('assets/ajaxcart.scss7cf6.css') }}" rel="stylesheet" type="text/css" media="all" />
    <link rel="preload" as="script" href="{{ asset('assets/index7cf6.js') }}" />
    <script src="{{ asset('assets/index7cf6.js') }}" type="text/javascript"></script>
    <link rel="preload" as="script" href="{{ asset('assets/main7cf6.js') }}" />
    <script src="{{ asset('assets/main7cf6.js') }}" type="text/javascript"></script>
    <link rel="preload" as='style' type="text/css" href="{{ asset('assets/animate.scss7cf6.css') }}">
    <link href="{{ asset('assets/animate.scss7cf6.css') }}" rel="stylesheet" type="text/css" media="all" />
    <div id="sidebar-all" class="d-none">
        <div class="sidebar-all-wrap-right container" data-type="wishlist">
            <div class="sidebar-all-wrap-right-main">
                <div class="sidebar-all-wrap-right-main-list row">
                </div>
            </div>
        </div>
    </div>
    <link rel="preload" href="{{ asset('assets/wishlist7cf6.js') }}" as="script">
    <script src="{{ asset('assets/wishlist7cf6.js') }}" type="text/javascript"></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <div id="popupCartModal" class="modal fade" role="dialog">
    </div>

	@yield('js')
    
</body>

</html>
