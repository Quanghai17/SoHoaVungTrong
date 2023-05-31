@extends('frontend.layouts.default')

@section('content')
<div class="breadcrumb_background"  style="background-image: url({{ Voyager::image(setting('site.breadcrumb')) }})">
    <div class="title_full">
        <div class="container a-center">
            <h1 class="title_page">Cây trồng</h1>
        </div>
    </div>
    <section class="bread-crumb">
        <span class="crumb-border"></span>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12 a-left">
                    <ul class="breadcrumb">
                        <li class="home">
                            <a href="index.html"><span>Trang chủ</span></a>
                            <span class="mr_lr"><svg xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 320 512"><!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                    <path
                                        d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z" />
                                </svg></span>
                        </li>
                        <li><strong><span> Cây trồng</span></strong></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</div>
<div class="layout-collection bg_before">
    <div class="container">
        <div class="row">
            <aside class="dqdt-sidebar sidebar col-xl-3 col-lg-12 col-12">
                <div class="aside-content aside-item">
                    <div class="aside-title">
                        <h2 class="title-head"><span>Menu</span></h2>
                    </div>
                    <nav class="nav-category aside-content">
                        <ul class="nav navbar-pills">
                            <li class="nav-item  relative">
                                <a title="Trang chủ" class="nav-link" href="{{ route('home') }}">Trang chủ</a>
                            </li>
                            <li class="nav-item  relative">
                                <a title="Giới thiệu" class="nav-link" href="{{ route('about') }}">Giới thiệu</a>
                            </li>
                            <li class="nav-item  relative">
                                <a title="Giới thiệu" class="nav-link" href="{{ route('products') }}">Sản phẩm</a>
                            </li>
                            <li class="nav-item  relative">
                                <a title="Đặt hàng" class="nav-link" href="{{ route('crops') }}">Cây trồng</a>
                            </li>
                            <li class="nav-item  relative">
                                <a title="Tin tức" class="nav-link" href="{{ route('news') }}">Tin tức</a>
                            </li>
                            <li class="nav-item  relative">
                                <a title="Liên hệ" class="nav-link" href="{{ route('techniques') }}">Kỹ thuật canh tác</a>
                            </li>
                        </ul>
                    </nav>
                </div>
                <script>
                    $(".open_mnu").click(function () {
                        $(this).toggleClass('cls_mn').next().slideToggle();
                    });
                </script>
            </aside>
            <div class="block-collection col-xl-9 col-lg-12 col-12">
                <h1 class="title-page d-none">c</h1>
                <div class="category-products">

                    <div class="col_sortby clearfix">
                        <div class="title_sortby f-left">
                            <h2 class="collection-title">
                                Các loại cây trồng
                            </h2>
                        </div>
                    </div>
                    <div class="products-view products-view-grid list_hover_pro">
                        <div class="row">
                            @foreach ($crops as $crop)
                            <div class="col-6 col-md-4 col-lg-4 col-xl-4">
                                <div class="item_product_main">
                                    <form action="" method="post"
                                        class="wishItem variants product-box product-block-item" data-cart-form
                                        data-id="product-actions-24840818" enctype="multipart/form-data">
                                        <div class="product-thumbnail">
                                            <a class="image_thumb scale_hover product-transition"
                                                href="{{ route('crops.show', $crop->slug) }}" title="Bơ Trung Đông">
                                                <img class="lazyload"
                                                    src="{{ Voyager::image($crop->image) }}"
                                                    data-src="{{ Voyager::image($crop->image) }}"
                                                    alt="Bơ Trung Đông">
                                            </a>
                                        </div>
                                        <div class="product-info">
                                            <div class="product-content">
                                                <h3 class="product-name"><a href="{{ route('crops.show', $crop->slug) }}"
                                                        title="Bơ Trung Đông">{{$crop['title']}}</a></h3>
                                                <div class="blockprice">
                                                    <div class="price-box">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            @endforeach

                        </div>
                    </div>
                    <div class="pagenav">
                        <div class="pagenav">

                            <nav class="clearfix relative nav_pagi w_100">
                                {{ $crops->links('frontend.layouts.partials.paginate') }}
                            </nav>
                            <script>

                                var cuPage = 1

                            </script>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
</div>
<div class="opacity_sidebar"></div>
@endsection