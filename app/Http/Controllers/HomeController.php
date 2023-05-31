<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class HomeController extends Controller
{
    public function index()
    {
       
      $banner = \App\Banner::where('type', 'home_banner')->where('status', 'ACTIVE')->first();
      $home_page = \TCG\Voyager\Models\Page::where('type', 'home_page')->first();
      $products = \App\Product::where('status', 1)->limit(8)->get();
      $crops = \App\Crop::limit(4)->get();
      $posts = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->where('category_id', 1)->limit(3)->get();
      $collections = \App\Collection::limit(3)->get();
      $middle_home = \TCG\Voyager\Models\Page::where('type', 'middle_home')->first();
      
      return view('frontend.homepage.index', [
        'banner' => $banner,
        'home_page' => $home_page,
        'products' => $products,
        'crops' => $crops,
        'posts' => $posts,
        'collections' => $collections,  
        'middle_home' => $middle_home,  
      ]);
  
    }
}
