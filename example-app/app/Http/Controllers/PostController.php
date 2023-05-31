<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index()
    {

        $news = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->where('category_id', 1)->paginate(6);
        // dd($news);
        $pageMeta = [
            'title' => 'Tin tức',
        ];

        return view('frontend.blogs.index', compact('news', 'pageMeta'));
    }

    public function show($slug)
    {

        $new = \TCG\Voyager\Models\Post::where('slug', $slug)->first();
        $title = $new->title ?? "";
        $recentNew = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->where('category_id', 1)->limit(6)->get();
        //    dd($recentNew);
        $pageMeta = [
            'title' => $title,
            'meta_description' => $new->meta_description,
            'image' => $new->image,
        ];
        return view('frontend.blogs.show', compact('new', 'title', 'recentNew', 'pageMeta'));
    }

    public function search(Request $request)
    {
        $recentNew = \TCG\Voyager\Models\Post::where('status', 'PUBLISHED')->where('category_id', 1)->paginate(6);
        $key_form = $request->key;
        $key = str_replace(' ', '%', $key_form);
        $news = \TCG\Voyager\Models\Post::where('title', 'LIKE', '%' . $key . '%')->paginate(6);
        return view('frontend.blogs.search', [
            'news' => $news,
            'recentNew' => $recentNew,

        ]);
    }
}
