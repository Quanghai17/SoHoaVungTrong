<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $about = \TCG\Voyager\Models\Page::where('type', 'about')->first();
        // @dd( $about );
        $pageMeta = [
        'title' => $about->title,
        'meta_description' => $about->meta_description,
        'image' => $about->images
        ];

        return view('frontend.about.index', compact('about', 'pageMeta'));
    }
}
