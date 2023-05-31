<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CropController extends Controller
{
    public function index()
    {
       
        $crops = \App\Crop::where('status', 'ACTIVE')->paginate(12);
        // dd($crops);
        $pageMeta = [
        'title' => 'Cây trồng',
        ];

        return view('frontend.crops.index', compact('crops', 'pageMeta'));
    }

    public function show($slug)
    {
       
        $crop = \App\Crop::where('slug', $slug)->first();
        $title= $crop->title ?? "";
        $recentCrop = \App\Product::where('category_id', $crop->category_id)->limit(6)->get();
        // dd($crop);
        $pageMeta = [
            'title' => $title,
            'meta_description' => $crop->meta_description,
            'image' => $crop->image,
        ];
        return view('frontend.crops.show', compact('crop', 'title', 'recentCrop', 'pageMeta'));
    }
}
