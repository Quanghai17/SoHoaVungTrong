@extends('frontend.layouts.default')

@section('content')
<div class="breadcrumb_background" style="background-image: url({{ Voyager::image(setting('site.breadcrumb')) }})">
    <div class="title_full">
        <div class="container a-center">
            <h1 class="title_page">Sản phẩm</h1>
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
                            <span class="mr_lr"><svg xmlns="http://www.w3.org/2000/svg"
                                    viewBox="0 0 320 512"><!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                    <path
                                        d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z" />
                                </svg></span>
                        </li>
                        <li><strong><span> Sản phẩm</span></strong></li>
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
                <h1 class="title-page d-none">Sản phẩm</h1>
                <div class="category-products">

                    <div class="col_sortby clearfix">
                        <div class="title_sortby f-left">
                            <h2 class="collection-title">
                                Sản phẩm
                            </h2>
                        </div>
                    </div>
                    <div class="products-view products-view-grid list_hover_pro">
                        <div class="row">
                            {{-- @dd($products['value']); --}}
                            @foreach ($products as $product)
                            <div class="col-6 col-md-4 col-lg-4 col-xl-4">
                                <div class="item_product_main">
                                    <form action="https://template-big-green.mysapo.net/cart/add" method="post"
                                        class="wishItem variants product-box product-block-item" data-cart-form
                                        data-id="product-actions-24840818" enctype="multipart/form-data">
                                        <div class="product-thumbnail">
                                            <a class="image_thumb scale_hover product-transition"
                                                href="{{ route('products.show', $product->slug) }}" title="Bơ Trung Đông">
                                                <img class="lazyload"
                                                    src="{{ Voyager::image($product->image) }}"
                                                    data-src="{{ Voyager::image($product->image) }}"
                                                    alt="Bơ Trung Đông">
                                            </a>
                                        </div>
                                        <div class="product-info">
                                            <div class="product-content">
                                                <h3 class="product-name"><a href="{{ route('products.show', $product->slug) }}"
                                                        title="Bơ Trung Đông">{{ $product['title'] }}</a></h3>
                                                <div class="blockprice">
                                                    <div class="price-box">
                                                        {{ number_format($product['price']) }}đ
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
                                {{ $products->links('frontend.layouts.partials.paginate') }}
                            </nav>
                            <script>
                                var cuPage = 1
                            </script>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="open-filters" class="open-filters d-xl-none">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="filter" role="img"
                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
                class="i-bar-white svg-inline--fa fa-filter fa-w-16">
                <path fill="currentColor"
                    d="M487.976 0H24.028C2.71 0-8.047 25.866 7.058 40.971L192 225.941V432c0 7.831 3.821 15.17 10.237 19.662l80 55.98C298.02 518.69 320 507.493 320 487.98V225.941l184.947-184.97C520.021 25.896 509.338 0 487.976 0z"
                    class=""></path>
            </svg>
            <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink"
                width="12" height="12" x="0" y="0" viewBox="0 0 492 492" style="enable-background:new 0 0 14 14"
                xml:space="preserve" class="i-close-white">
                <g xmlns="http://www.w3.org/2000/svg">
                    <path
                        d="M300.188,246L484.14,62.04c5.06-5.064,7.852-11.82,7.86-19.024c0-7.208-2.792-13.972-7.86-19.028L468.02,7.872    c-5.068-5.076-11.824-7.856-19.036-7.856c-7.2,0-13.956,2.78-19.024,7.856L246.008,191.82L62.048,7.872    c-5.06-5.076-11.82-7.856-19.028-7.856c-7.2,0-13.96,2.78-19.02,7.856L7.872,23.988c-10.496,10.496-10.496,27.568,0,38.052    L191.828,246L7.872,429.952c-5.064,5.072-7.852,11.828-7.852,19.032c0,7.204,2.788,13.96,7.852,19.028l16.124,16.116    c5.06,5.072,11.824,7.856,19.02,7.856c7.208,0,13.968-2.784,19.028-7.856l183.96-183.952l183.952,183.952    c5.068,5.072,11.824,7.856,19.024,7.856h0.008c7.204,0,13.96-2.784,19.028-7.856l16.12-16.116    c5.06-5.064,7.852-11.824,7.852-19.028c0-7.204-2.792-13.96-7.852-19.028L300.188,246z"
                        fill="#ffffff" data-original="#000000" style="" class=""></path>
                </g>
            </svg>
            <span>Lọc</span>
        </div>
    </div>
</div>
<div class="opacity_sidebar"></div>
@endsection