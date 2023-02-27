<?php

use App\Http\Controllers\BlogPostController;
use App\Http\Controllers\EtudiantController;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\FileUploadController;
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

Route::get('/', function () {
    return view('welcome');
});

Route::get('app',[EtudiantController::class, 'index'])->name('app.index');
Route::get('app/{etudiant}',[EtudiantController::class, 'show'])->name('app.show');
Route::get('app-create',[EtudiantController::class, 'create'])->name('app.create');
Route::post('app-create',[EtudiantController::class, 'store'])->name('app.store');
Route::get('app-edit/{etudiant}',[EtudiantController::class, 'edit'])->name('app.edit');
Route::put('app-edit/{etudiant}',[EtudiantController::class, 'update']);
Route::delete('app-edit/{etudiant}',[EtudiantController::class, 'destroy']);



Route::get('blog', [BlogPostController::class, 'index'])->name('blog.index')->middleware('auth');
Route::get('blog/{blogPost}', [BlogPostController::class, 'show'])->name('blog.show')->middleware('auth');
Route::get('blog-create', [BlogPostController::class, 'create'])->name('blog.create')->middleware('auth');
Route::post('blog-create', [BlogPostController::class, 'store'])->name('blog.store')->middleware('auth');
Route::get('blog-edit/{blogPost}', [BlogPostController::class, 'edit'])->name('blog.edit')->middleware('auth');
Route::put('blog-edit/{blogPost}', [BlogPostController::class, 'update'])->middleware('auth');
Route::delete('blog-edit/{blogPost}', [BlogPostController::class, 'destroy'])->middleware('auth');



Route::get('file', [FileUploadController::class, 'index'])->name('file.index')->middleware('auth');
Route::get('file/{fileUpload}', [FileUploadController::class, 'show'])->name('file.show')->middleware('auth');
Route::get('file-create', [FileUploadController::class, 'create'])->name('file.create')->middleware('auth');
Route::post('file-create', [FileUploadController::class, 'store'])->name('file.store')->middleware('auth');
Route::delete('file-edit/{fileUpload}', [FileUploadController::class, 'destroy'])->middleware('auth');





Route::get('registration', [CustomAuthController::class, 'create'])->name('auth.create');
Route::post('registration', [CustomAuthController::class, 'store'])->name('user.store');

Route::get('login', [CustomAuthController::class, 'index'])->name('login');
Route::post('login', [CustomAuthController::class, 'authentication'])->name('user.auth');
Route::get('logout', [CustomAuthController::class, 'logout'])->name('logout');

Route::get('dashboard', [CustomAuthController::class, 'dashboard'])->name('dashboard');

Route::get('forgot-password', [CustomAuthController::class, 'forgotPassword'])->name('forgot.pass');
Route::post('forgot-password', [CustomAuthController::class, 'tempPassword'])->name('temp.pass');
Route::get('new-password/{user}/{tempPassword}', [CustomAuthController::class, 'newPassword'])->name('new.pass');
Route::post('new-password/{user}/{tempPassword}', [CustomAuthController::class, 'storeNewPassword'])->name('store.pass');