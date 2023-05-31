<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {

        $products = \App\Product::where('status', 1)->paginate(12);
        // dd($products);
        $pageMeta = [
            'title' => 'Sản phẩm',
        ];

        return view('frontend.product.index', compact('products', 'pageMeta'));
    }

    public function show($slug)
    {

        $product = \App\Product::where('slug', $slug)->first();
        $title = $product->title ?? "";
        $recentProduct = \App\Product::where('category_id', $product->category_id)->limit(4)->get();
        // dd($product);
        $pageMeta = [
            'title' => $title,
            'meta_description' => $product->meta_description,
            'image' => $product->image,
        ];
        return view('frontend.product.show', compact('product', 'title', 'recentProduct', 'pageMeta'));
    }

    public function search(Request $request)
    {
        $key_form = $request->key;
        $key = str_replace(' ', '%', $key_form);
        $products = \App\Product::where('title', 'LIKE', '%' . $key . '%')->paginate(12);
        return view('frontend.product.index', [
            'products' => $products,

        ]);
    }

    public function collection($slug)
    {
 
        $collection = \App\Collection::where('slug', $slug)->first();
        // dd($collection);
        if ($collection == null) {
            return redirect()->route('index');
        }
        $products = \App\Product::where('category_id', $collection->id)->latest()->paginate(12);

        $pageMeta = [
            // 'title' => $category->name,
            // 'meta_description' => $category->name,
            // 'image' => setting('site.logo'),
        ];
        $title = $collection->title;
        return view('frontend.product.index', compact('products', 'pageMeta', 'title'));
    }
}
