@extends('frontend.layouts.default')

@section('content')
    <div class="breadcrumb_background"  style="background-image: url({{ Voyager::image(setting('site.breadcrumb')) }})">
        <div class="title_full">
            <div class="container a-center">
                <h1 class="title_page">Kỹ thuật canh tác</h1>
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
                            <li><strong><span>Kỹ thuật canh tác</span></strong></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="blog_wrapper layout-blog" itemscope itemtype="https://schema.org/Blog">
        <div class="container">
            <div class="row">
                <div class="right-content col-lg-8 col-12 order-lg-1">
                    <h1 class="title-page">Kỹ thuật canh tác</h1>
                    <div class="list-blogs">
                        <div class="row clearfix">
                            @foreach ($techniques as $technique)
                                <div class="col-xl-6 col-md-6 col-12">
                                    <div class="item_blog_base">
                                        <a class="thumb" href="{{ route('techniques.show', $technique->slug) }}"
                                            title="{{ $technique['title'] }}">

                                            <img src="{{ Voyager::image($technique->image) }}"
                                                data-src="{{ Voyager::image($technique->image) }}"
                                                alt="{{ $technique['title'] }}" class="lazyload img-responsive" />
                                        </a>
                                        <div class="content_blog clearfix">
                                            <h3><a href="{{ route('techniques.show', $technique['slug']) }}"
                                                    title="{{ $technique['title'] }}"
                                                    class="a-title">{{ $technique['title'] }}</a></h3>
                                            <p>
                                                {{ $technique['excerpt'] }}
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                        <div class="text-center">
                        </div>

                    </div>
                    <div class="pagenav" style="margin-bottom: 57px;">
                        <div class="pagenav">
                            <nav class="clearfix relative nav_pagi w_100">
                                {{ $techniques->links('frontend.layouts.partials.paginate') }}
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="blog_left_base col-lg-4 col-12 order-lg-2  block-search">
                    <div class="nd-header-search nd-searchs">
                        <form action="{{ route('searchPost') }}" method="get" style="margin-top: 100px;"
                            class="nd-header-search-form" role="search">
                            <input type="text" name="key" class="search-auto form-control"
                                placeholder="Tìm kiếm bài viết" autocomplete="off" />
                            
                            <button class="btn btn-default" type="submit" aria-label="Tìm kiếm" style="background: #339538;">
                                <svg width="21" height="21" viewBox="0 0 21 21" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M20.7608 19.6062L15.6358 14.4813C16.9097 12.9494 17.6772 10.9823 17.6772 8.83887C17.6772 3.9651 13.7122 0 8.83865 0C3.96499 0 0 3.9651 0 8.83887C0 13.7123 3.96499 17.6771 8.83865 17.6771C10.9819 17.6771 12.9492 16.9097 14.4811 15.6358L19.6062 20.7608C19.7656 20.9203 19.9746 21 20.1835 21C20.3924 21 20.6014 20.9203 20.7609 20.7608C21.0798 20.442 21.0798 19.9251 20.7608 19.6062ZM1.63294 8.83887C1.63294 4.8655 4.86539 1.63294 8.83865 1.63294C12.8118 1.63294 16.0441 4.8655 16.0441 8.83887C16.0441 12.8119 12.8118 16.0441 8.83865 16.0441C4.86539 16.0441 1.63294 12.8119 1.63294 8.83887Z"
                                        fill="white" />
                                </svg>
                            </button>
                        </form>
                    </div>
                    <div class="blog_noibat" style="margin-top: 22px;">
                        <h2 class="h2_sidebar_blog">
                            <a href="tin-tuc.html" title="Bài viết nổi bật">Bài viết nổi bật</a>
                        </h2>
                        <div class="blog_content">
                            @foreach ($techniques as $technique)
                                <div class="item clearfix">
                                    <div class="post-thumb">
                                        <a class="image-blog scale_hover"
                                            href="{{ route('techniques.show', $technique['slug']) }}"
                                            title="{{ $technique['title'] }}">

                                            <img class="img_blog lazyload" src="{{ Voyager::image($technique->image) }}"
                                                data-src="{{ Voyager::image($technique->image) }}"
                                                alt="{{ $technique['title'] }}">
                                        </a>
                                    </div>
                                    <div class="contentright">
                                        <h3><a title="{{ $technique['title'] }}"
                                                href="{{ route('techniques.show', $technique['slug']) }}">{{ $technique['title'] }}</a>
                                        </h3>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
