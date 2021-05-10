<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controller\PostCreateController;
use App\Http\Controller\PostDisplayController;
use App\Http\Controllers\HomeController;

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

Route::get('/', function () {
    return view('welcomemain_unlogged');
})->middleware('user');
Route::get('/login', function () {
});
Route::get('/register', function () {
});

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');
Route::get('/home/cryptoprice', [App\Http\Controllers\CryptoSuckAPIController::class, 'suck'])->name('Crypto Heaven');
Route::get('/home/{wall}', [App\Http\Controllers\PostDisplayController::class, 'spost'])->name('board');
Route::get('/home/{wall}/createpost', [App\Http\Controllers\PostCreateController::class, 'cpost'])->name('add.post');
Route::post('/home/{wall}/createpost', [App\Http\Controllers\PostCreateController::class, 'createPost'])->name('create.post');
Route::get('/home/{wall}/{post}', [App\Http\Controllers\PostDisplayController::class, 'scomm'])->name('board/post');
Route::get('/home/{wall}/{post}/createcomment', [App\Http\Controllers\CommentCreateController::class, 'ccomm'])->name('add.comment');
Route::post('/home/{wall}/{post}/createcomment', [App\Http\Controllers\CommentCreateController::class, 'createComment'])->name('create.comment');



Route::get('/admin', [App\Http\Controllers\HomeAdminController::class, 'index'])->name('admin')->middleware('admin');
Route::get('/admin/{wall}', [App\Http\Controllers\PostDisplayController::class, 'sposta'])->name('board_admin')->middleware('admin');
Route::get('/admin/{wall}/delete-post/{id}', [App\Http\Controllers\PostDisplayController::class, 'deletePost'])->name('delete.post')->middleware('admin');
Route::get('/admin/{wall}/createpost', [App\Http\Controllers\PostCreateController::class, 'cposta'])->name('add.post')->middleware('admin');
Route::post('/admin/{wall}/createpost', [App\Http\Controllers\PostCreateController::class, 'createPost'])->name('create.post')->middleware('admin');
Route::get('/admin/{wall}/editpost/{id}', [App\Http\Controllers\EditController::class, 'eposta'])->name('openedit.post')->middleware('admin');
Route::post('/admin/{wall}/editpost', [App\Http\Controllers\EditController::class, 'editPost'])->name('edit.post')->middleware('admin');
Route::get('/admin/{wall}/{post}', [App\Http\Controllers\PostDisplayController::class, 'scomma'])->name('board_admin/post')->middleware('admin');
Route::get('/admin/{wall}/{post}/delete-comment/{id}', [App\Http\Controllers\PostDisplayController::class, 'deleteComment'])->name('delete.comment')->middleware('admin');
Route::get('/admin/{wall}/{post}/createcomment', [App\Http\Controllers\CommentCreateController::class, 'ccomma'])->name('add.comment')->middleware('admin');
Route::post('/admin/{wall}/{post}/createcomment', [App\Http\Controllers\CommentCreateController::class, 'createComment'])->name('create.comment')->middleware('admin');

Route::get('/logout', function () {
    Auth::logout();
    header("Location: /");
});

