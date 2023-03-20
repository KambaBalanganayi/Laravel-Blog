<?php

namespace App\Http\Controllers;

use App\Models\BlogPost;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class BlogPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $blogs = BlogPost::select()
                ->paginate(10);
        return view('blog.index', ['blogs'=>$blogs]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $category =  Category::selectCategory();

        return view('blog.create', ['categories' => $category]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'title' => 'required|min:5',
            'body' => 'required|min:5',
            'categorys_id' => 'required|integer|exists:categorys,id',
        ]);
        //
        $newPost = BlogPost::create([
            'title' => $request->title,
            'body'  => $request->body,
            'user_id' => Auth::user()->id,
            'categorys_id' => $request->categorys_id
        ]);

        return redirect(route('blog.show', $newPost->id));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function show(BlogPost $blogPost)
    {
        //
        return view('blog.show', ['blogPost' => $blogPost]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function edit(BlogPost $blogPost)
    {
        //
        $category =  Category::selectCategory();

        return view('blog.edit', ['blogPost' => $blogPost, 
                                'categories' => $category]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, BlogPost $blogPost)
    {
        //

        $request->validate([
            'title' => 'required|min:5',
            'body' => 'required|min:5',
            'categorys_id' => 'required|integer|exists:categorys,id',
        ]);
        
        $blogPost->update([
            'title' => $request->title,
            'body' => $request->body,
            'categorys_id'=>$request->categorys_id
        ]);

        return redirect(route('blog.show', $blogPost->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\BlogPost  $blogPost
     * @return \Illuminate\Http\Response
     */
    public function destroy(BlogPost $blogPost)
    {
        //
        $blogPost->delete();

        return redirect(route('blog.index'));
    }

}
