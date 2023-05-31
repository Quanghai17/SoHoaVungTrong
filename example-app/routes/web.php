<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('clear-cache', function () {
    Artisan::call('config:cache');
    Artisan::call('cache:clear');
    Artisan::call('view:clear');
//    Artisan::call('storage:link');
    return 'xong';
});

Route::get('/', [\App\Http\Controllers\HomeController::class , 'index'])->name('home');
Route::get('/about', [\App\Http\Controllers\AboutController::class , 'index'])->name('about');
Route::get('/news', [\App\Http\Controllers\PostController::class , 'index'])->name('news');
Route::get('/news/{slug}', [\App\Http\Controllers\PostController::class , 'show'])->name('news.show');
Route::get('/products', [\App\Http\Controllers\ProductController::class , 'index'])->name('products');
Route::get('/collections/{slug}', [\App\Http\Controllers\ProductController::class , 'collection'])->name('collections.collection');
Route::get('/products/{slug}', [\App\Http\Controllers\ProductController::class , 'show'])->name('products.show');
Route::get('/crops', [\App\Http\Controllers\CropController::class , 'index'])->name('crops');
Route::get('/crops/{slug}', [\App\Http\Controllers\CropController::class , 'show'])->name('crops.show');
Route::get('/techniques', [\App\Http\Controllers\TechniqueController::class , 'index'])->name('techniques');
Route::get('/techniques/{slug}', [\App\Http\Controllers\TechniqueController::class , 'show'])->name('techniques.show');
Route::get('/search',[\App\Http\Controllers\ProductController::class , 'search'])->name('search');
Route::get('/searchPost',[\App\Http\Controllers\PostController::class , 'search'])->name('searchPost');
Route::get('/maps',[\App\Http\Controllers\MapController::class , 'index'])->name('map');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
