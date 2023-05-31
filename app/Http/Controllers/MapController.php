<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;


class MapController extends Controller
{
    public function index()
    {
      
        $areas = Http::get(config('app.url_api')."/VungTrong")->json();

        return view('frontend.map.index', [
          'areas' => $areas['value'], 
        ]);
    
        
    }
}
