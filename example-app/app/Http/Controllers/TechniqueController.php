<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TechniqueController extends Controller
{
    public function index()
    {

        $techniques = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->where('category_id', 2)->paginate(12);
        // dd($techniques);
        $pageMeta = [
            'title' => 'Kỹ thuật canh tác',
        ];

        return view('frontend.techniques.index', compact('techniques', 'pageMeta'));
    }

    public function show($slug)
    {

        $technique = \TCG\Voyager\Models\Post::where('slug', $slug)->first();
        $title = $technique->title ?? "";
        $recentNew = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->where('category_id', 2)->limit(6)->get();
        //    dd($recentNew);
        $pageMeta = [
            'title' => $title,
            'meta_description' => $technique->meta_description,
            'image' => $technique->image,
        ];
        return view('frontend.techniques.show', compact('technique', 'title', 'recentNew', 'pageMeta'));
    }
}
