@php
    $menu = menu('home_menu', '_json');
    $banner = \App\Banner::where('type', 'banner_header')->first();
    // dd($banner);
@endphp
<header class="header">
    <div class="top_header d-none d-xl-block d-lg-block">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-4 col-lg-4 col-12 block-search">
                   
                </div>
            </div>
        </div>
    </div>
    <div class="middle-header">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-4 col-lg-4 col-12 block-search">
                    <div class="nd-header-search nd-searchs">
                        <form action="{{ route('search') }}" method="get"
                            class="nd-header-search-form" role="search">
                            <input type="text" name="key" class="search-auto form-control"
                                placeholder="Tìm sản phẩm" autocomplete="off" />
                            
                            <button class="btn btn-default" type="submit" aria-label="Tìm kiếm">
                                <svg width="21" height="21" viewBox="0 0 21 21" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M20.7608 19.6062L15.6358 14.4813C16.9097 12.9494 17.6772 10.9823 17.6772 8.83887C17.6772 3.9651 13.7122 0 8.83865 0C3.96499 0 0 3.9651 0 8.83887C0 13.7123 3.96499 17.6771 8.83865 17.6771C10.9819 17.6771 12.9492 16.9097 14.4811 15.6358L19.6062 20.7608C19.7656 20.9203 19.9746 21 20.1835 21C20.3924 21 20.6014 20.9203 20.7609 20.7608C21.0798 20.442 21.0798 19.9251 20.7608 19.6062ZM1.63294 8.83887C1.63294 4.8655 4.86539 1.63294 8.83865 1.63294C12.8118 1.63294 16.0441 4.8655 16.0441 8.83887C16.0441 12.8119 12.8118 16.0441 8.83865 16.0441C4.86539 16.0441 1.63294 12.8119 1.63294 8.83887Z"
                                        fill="white" />
                                </svg>
                            </button>
                        </form>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-3 col-12 d-lg-block d-none block-logo">
                    <a href="{{route('home')}}" class="logo">
                        <img style="width: 85px" src="{{ Voyager::image(setting('site.logo')) }}"
                            alt="Template Big Green">
                    </a>
                </div>
                <div class="col-xl-4 col-lg-5 col-12 d-lg-flex header-right">
                    <div class="header-page-link">
                        <ul class="group-account">
                            <li class="d-lg-none d-inline-block menu-mobi">
                                <div class="category-action">
                                    <svg width="24" height="15" viewBox="0 0 24 15" fill="none"
                                        xmlns="http://www.w3.org/2000/svg">
                                        <rect width="24" height="1" fill="#339538" />
                                        <rect y="7" width="24" height="1" fill="#339538" />
                                        <rect y="14" width="24" height="1" fill="#339538" />
                                    </svg>
                                </div>
                            </li>
                            <li class="logo_mobile d-xl-none d-lg-none d-md-block d-block">
                                <a href="{{route('home')}}" class="logo">
                                    <img src="{{ Voyager::image(setting('site.logo')) }}"
                                        alt="Template Big Green">
                                </a>
                            </li>
                            <li class="d-none d-md-block d-lg-block d-xl-block phone_header">
                                <div class="wrap_s">
                                    <div class="icon_">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="39" height="43"
                                            viewBox="0 0 39 43" fill="none">
                                            <path fill-rule="evenodd" clip-rule="evenodd"
                                                d="M35.4756 3.2558C33.2543 1.15588 30.3131 0 27.1919 0C24.0708 0 21.1273 1.15588 18.906 3.2558C16.6346 5.40177 15.3839 8.27304 15.3839 11.34C15.3839 14.407 16.6346 17.276 18.906 19.4243C19.3138 19.8088 19.7444 20.1611 20.1978 20.4811C19.364 21.8673 18.3866 23.1429 17.2885 24.278C19.6829 24.0593 21.9543 23.3593 24.0229 22.2679C25.0436 22.5396 26.1075 22.6801 27.1919 22.6801C30.3131 22.6801 33.2566 21.5242 35.4779 19.4243C37.7493 17.2783 39 14.407 39 11.34C39 8.27304 37.747 5.40177 35.4756 3.2558ZM27.1919 20.1588C21.9406 20.1588 17.669 16.203 17.669 11.34C17.669 6.47705 21.9406 2.52129 27.1919 2.52129C32.4433 2.52129 36.7149 6.47705 36.7149 11.34C36.7127 16.203 32.441 20.1588 27.1919 20.1588ZM27.397 34.3424L23.7769 30.3521C22.7335 29.2009 21.0339 29.2009 19.9882 30.3521L18.398 32.1044C14.7665 30.0067 11.782 26.7164 9.87971 22.7123L11.4699 20.9601C12.5133 19.8088 12.5133 17.9345 11.4699 16.7832L7.85209 12.7929C6.80866 11.6417 5.1091 11.6417 4.0634 12.7929L1.17005 15.9843C-0.342695 17.6513 -0.390538 20.5916 1.03791 24.2642C2.32511 27.573 4.68535 31.2179 7.68578 34.5266C10.6862 37.8354 13.9919 40.4373 16.9946 41.8556C18.6076 42.6178 20.0657 43 21.3141 43C22.6401 43 23.7268 42.5694 24.5059 41.7106L27.4015 38.5169C27.9073 37.9597 28.1853 37.2183 28.1853 36.4285C28.1807 35.6411 27.9028 34.8997 27.397 34.3424ZM25.7817 36.7348L22.8861 39.9284C22.1024 40.7919 20.2365 40.6491 17.8922 39.5416C15.1515 38.2476 12.101 35.8322 9.30104 32.7468C6.5011 29.6591 4.31172 26.295 3.13844 23.2741C2.13374 20.6907 2.00388 18.6322 2.78759 17.7687L5.68321 14.5751C5.83586 14.407 6.08646 14.407 6.2391 14.5751L9.8592 18.5654C10.0118 18.7335 10.0118 19.0098 9.8592 19.1779L7.11394 22.1988L7.45795 23.0001C9.67011 28.1509 13.4634 32.3323 18.136 34.773L18.8628 35.1529L21.6035 32.1297C21.7037 32.0192 21.8199 32.0031 21.8814 32.0031C21.9429 32.0031 22.0591 32.0192 22.1593 32.1297L25.7794 36.12C25.8797 36.2305 25.8934 36.3595 25.8934 36.4262C25.8956 36.4953 25.882 36.6243 25.7817 36.7348ZM23.3828 11.34C23.3828 12.268 22.7016 13.0209 21.8586 13.0209C21.018 13.0209 20.3345 12.268 20.3345 11.34C20.3345 10.4121 21.0157 9.65917 21.8586 9.65917C22.7016 9.65917 23.3828 10.4121 23.3828 11.34ZM32.523 13.0186C33.3637 13.0186 34.0471 12.2656 34.0471 11.3377C34.0471 10.4098 33.3659 9.65687 32.523 9.65687C31.6823 9.65687 30.9989 10.4098 30.9989 11.3377C31.0011 12.268 31.6823 13.0186 32.523 13.0186ZM28.7161 11.34C28.7161 12.268 28.0349 13.0209 27.1919 13.0209C26.349 13.0209 25.6678 12.268 25.6678 11.34C25.6678 10.4121 26.349 9.65917 27.1919 9.65917C28.0349 9.65917 28.7161 10.4121 28.7161 11.34Z"
                                                fill="#349545" />
                                        </svg>
                                    </div>
                                    <div class="content_s">
                                        <p class="bold_">Hỗ trợ</p>
                                        <a class="fone" href="tel:{{setting('site.phone')}}" title="{{setting('site.phone')}}">{{setting('site.phone')}}</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-nav">
        <div class="container">
            <div class="inner">
                <div class="heade_menunavs">
                    <div class="close-menu d-lg-none d-block">
                        <svg aria-hidden="true" focusable="false" data-prefix="fal" data-icon="times-circle"
                            role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"
                            class="svg-inline--fa fa-times-circle fa-w-16">
                            <path fill="currentColor"
                                d="M256 8C119 8 8 119 8 256s111 248 248 248 248-111 248-248S393 8 256 8zm0 464c-118.7 0-216-96.1-216-216 0-118.7 96.1-216 216-216 118.7 0 216 96.1 216 216 0 118.7-96.1 216-216 216zm94.8-285.3L281.5 256l69.3 69.3c4.7 4.7 4.7 12.3 0 17l-8.5 8.5c-4.7 4.7-12.3 4.7-17 0L256 281.5l-69.3 69.3c-4.7 4.7-12.3 4.7-17 0l-8.5-8.5c-4.7-4.7-4.7-12.3 0-17l69.3-69.3-69.3-69.3c-4.7-4.7-4.7-12.3 0-17l8.5-8.5c4.7-4.7 12.3-4.7 17 0l69.3 69.3 69.3-69.3c4.7-4.7 12.3-4.7 17 0l8.5 8.5c4.6 4.7 4.6 12.3 0 17z"
                                class=""></path>
                        </svg>
                    </div>
                    <div class="wrap_main">
                        <div class="bg-header-nav ">
                            <nav class="header-nav">
                                <ul class="item_big">
                                    @foreach ($menu as $item)
                                        @if (count($item->children) > 0)
                                            <li class="nav-item has-childs">
                                                <a href="{{ asset($item->url) }}"
                                                    class="a-img">{{ $item->title }}<svg
                                                    width="8" height="17" viewBox="0 0 8 17" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path
                                                        d="M7.13382 7.1278L7.13379 7.12777L0.512271 0.509686L0.795057 0.226752L0.51227 0.509685C0.512123 0.509538 0.51201 0.509431 0.511927 0.509356L7.13382 7.1278ZM7.13382 7.1278C7.62239 7.61603 7.622 8.40641 7.13301 8.89414L7.13298 8.89417L0.502368 15.5089C0.50222 15.509 0.502106 15.5091 0.502022 15.5092C0.501841 15.5092 0.501547 15.5093 0.501149 15.5093C0.500827 15.5093 0.500574 15.5093 0.500392 15.5092L7.13055 8.89499C7.13056 8.89498 7.13057 8.89497 7.13058 8.89495C7.61976 8.407 7.62011 7.61541 7.13138 7.12699L7.13382 7.1278Z">
                                                    </path>
                                                </svg></a>
                                                    <i class="open_mnu down_icon"></i>
                                                <ul class="dropdown-menu">
                                                    @foreach ($item->children as $child)
                                                        <li class="nav-item-lv2">
                                                            <a class="a-img" href="{{ asset($child->url) }}">{{ $child->title }}</a>
                                                        </li>
                                                    @endforeach
                                                </ul>
                                            </li>
                                        @else
                                            <li class=" nav-item @if($item->url == "/".request()->segment(1)) active @endif">
                                                <a class="a-img" href="{{ asset($item->url) }}">{{ $item->title }}</a>
                                            </li>
                                        @endif
                                    @endforeach
                                   
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>