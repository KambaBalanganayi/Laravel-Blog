@extends('layouts.layout')
@section('title', 'Ajouter BlogPost')
@section('content')
<div class="container">
    <div class="row">
        <div class="col-12 text-center mt-2">
            <h1 class="display-one ">
                @lang('lang.add_post')
            </h1>
        </div>
    </div>
    <hr>
    <div class="row justify-content-center">
        <div class="col-6">
            <div class="card">
                <form method="post">
                    @csrf
                    <div class="card-header">
                        Form
                    </div>
                    <div class="card-body">
                        <div class="control-group col-12">
                            <label for="title">@lang('lang.title_forum_placeholder')</label>
                            <input type="text" id="title" name="title" class="form-control">
                        </div>
                        <div class="control-group col-12">
                            <label for="body">@lang('lang.forum_article')</label>
                            <textarea name="body" id="body" class="form-control"></textarea>
                        </div>
                        <div class="control-group col-12">
                            <label for="category">@lang('lang.category')</label>
                            <select name="categorys_id" id="category" class="form-control">
                                <option value="">@lang('lang.category_choice')</option>
                                @foreach($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->category }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="card-footer">
                        <input type="submit" value="@lang('lang.submit')" class="btn btn-success">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection