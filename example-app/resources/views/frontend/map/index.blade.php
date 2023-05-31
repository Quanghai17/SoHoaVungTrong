@extends('frontend.layouts.default')
<style>
    /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */

    #map {
        height: 100%;
    }

    /* Optional: Makes the sample page fill the window. */

    html,
    body {
        height: 100%;
        margin: 0;
        padding: 0;
    }
</style>
@section('content')
    <div class="breadcrumb_background">
        <div class="title_full">
            <div class="container a-center">
                <h1 class="title_page" style="color: #c22e6a">Sơ đồ vùng trồng</h1>
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
                                <span class="mr_lr"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                                        <!--! Font Awesome Pro 6.0.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2022 Fonticons, Inc. -->
                                        <path
                                            d="M96 480c-8.188 0-16.38-3.125-22.62-9.375c-12.5-12.5-12.5-32.75 0-45.25L242.8 256L73.38 86.63c-12.5-12.5-12.5-32.75 0-45.25s32.75-12.5 45.25 0l192 192c12.5 12.5 12.5 32.75 0 45.25l-192 192C112.4 476.9 104.2 480 96 480z" />
                                    </svg></span>
                            </li>
                            <li><strong><span> Vùng bản đồ cây trồng</span></strong></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div id="map"></div>
@endsection
@section('js')
    <script>
        // This example creates a simple polygon representing the Bermuda Triangle.
        // When the user clicks on the polygon an info window opens, showing
        // information about the polygon's coordinates.
        let map;
        let infoWindow;

        function initMap() {
            map = new google.maps.Map(document.getElementById("map"), {
                zoom: 15,
                center: {
                    lat: 22.540061378888268,
                    lng: 104.28243355253767
                },
                mapTypeId: "hybrid",
            });

            @foreach ($areas as $key => $value)
               
                const triangleCoords{{ $key }} = [
                    @foreach (json_decode($value['LatLong']) as $item)
                        {
                            lat: {{ $item->lat }},
                            lng: {{ $item->lng }}
                        },
                    @endforeach
                ];
                // Construct the polygon.
                const bermudaTriangle{{ $key }} = new google.maps.Polygon({
                    paths: triangleCoords{{ $key }},
                    strokeColor: "#FF0000",
                    strokeOpacity: 0.8,
                    strokeWeight: 2,
                    fillColor: "#FF0000",
                    fillOpacity: 0.35,
                });


                bermudaTriangle{{ $key }}.setMap(map);

                // Add a listener for the click event.
                var popup = true;
                infoWindow = new google.maps.InfoWindow();
               
                bermudaTriangle{{ $key }}.addListener("click",   function showArrays(event) {
                    // Since this polygon has only one path, we can call getPath() to return the
                    // MVCArray of LatLngs.
                    // @ts-ignore
                  
                    const polygon = this;
                    const vertices = polygon.getPath();
                
                    let contentString =
                        "<h1>Thông tin vùng trồng</h1><br>" +
                        "<h5>Mã số vùng trồng: {{$value['MaSo']}} </h5> <br>" +
                        "<h5>Địa chỉ: {{$value['DiaChi']}}</h5><br>"+
                        "<h5>Năm cấp: {{$value['NamCap']}}</h5><br>"+
                        "<h5>Diện tích:  {{$value['DienTichCanhTac']}}</h5><br>"+
                        "<h5>Hình thức canh tác: {{$value['HinhThucCanhTac']}} </h5><br>"+
                        "<h5>Sản lượng dự kiến: {{$value['SanLuongDuKien']}} </h5><br>"+
                        "<h5>Tiêu chuẩn: {{$value['TieuChuan']}} </h5><br>"+
                        "<h5>Tình trạng: {{$value['HoatDong'] ? 'Hoạt động' : 'Không hoạt động'}}</h5> <br>" ;
                
                    // Replace the info window's content and position.
                    infoWindow.setContent(contentString);
                    infoWindow.setPosition(event.latLng);
                    infoWindow.open(map);
                });
               
            @endforeach
            infoWindow = new google.maps.InfoWindow();
        }

      

        window.initMap = initMap;
    </script>
   
@endsection
