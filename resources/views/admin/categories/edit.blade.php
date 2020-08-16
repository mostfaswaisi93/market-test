@extends('layouts.admin')
@section('title') @lang('admin.edit_category') @endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">@lang('admin.edit_category')</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">@lang('admin.home')</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.categories.index') }}">@lang('admin.categories_management')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('admin.edit_category')</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content-body">
    <section class="portlet">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">
                            <i class="feather icon-edit mr-25"></i>
                            @lang('admin.edit') {{ $category->name }}
                        </h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            @include('partials._errors')
                            <form action="{{ route('admin.categories.update', $category->id) }}" method="post"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    @foreach (config('translatable.locales') as $locale)
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label>@lang('admin.' . $locale . '.name')</label>
                                            <input id="name" type="text" name="{{ $locale }}[name]" class="form-control"
                                                value="{{ $category->translate($locale)->name }}"
                                                placeholder="@lang('admin.' . $locale . '.name')">
                                        </div>
                                    </div>
                                    @endforeach
                                    <div class="col-md-6 col-12">
                                        <div class="media mb-2">
                                            <a class="mr-2 my-25" href="#">
                                                <img src="{{ $category->image_path_ar }}" alt="users avatar"
                                                    class="users-avatar-shadow rounded image_ar img-thumbnail image-ar-preview"
                                                    height="90" width="90">
                                            </a>
                                            <div class="media-body mt-50">
                                                <label>@lang('admin.image_ar')</label>
                                                <div class="col-12 d-flex mt-1 px-0">
                                                    <input type="file" class="form-control-file image_ar"
                                                        name="image_ar" id="image_ar" style="display:none;">
                                                    <button class="btn btn-primary" onclick="ImgArUpload();">
                                                        <i class="fa fa-plus"></i>
                                                        @lang('admin.file_upload')
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="media mb-2">
                                            <a class="mr-2 my-25" href="#">
                                                <img src="{{ $category->image_path_en }}" alt="users avatar"
                                                    class="users-avatar-shadow rounded image_en img-thumbnail image-en-preview"
                                                    height="90" width="90">
                                            </a>
                                            <div class="media-body mt-50">
                                                <label>@lang('admin.image_en')</label>
                                                <div class="col-12 d-flex mt-1 px-0">
                                                    <input type="file" class="form-control-file image_en"
                                                        name="image_en" id="image_en" style="display:none;">
                                                    <button class="btn btn-primary" onclick="ImgEnUpload();">
                                                        <i class="fa fa-plus"></i>
                                                        @lang('admin.file_upload')
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="media mb-2">
                                            <a class="mr-2 my-25" href="#">
                                                <img src="{{ $category->icon_path }}" alt="users avatar"
                                                    class="users-avatar-shadow rounded icon img-thumbnail icon-preview"
                                                    height="50" width="50">
                                            </a>
                                            <div class="media-body mt-50">
                                                <div class="col-12 d-flex mt-1 px-0">
                                                    <input type="file" class="form-control-file icon" name="icon"
                                                        id="icon" style="display:none;">
                                                    <button class="btn btn-primary" onclick="IconUpload();">
                                                        <i class="feather icon-plus-square"></i>
                                                        @lang('admin.icon_upload')
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <button type="submit" class="btn btn-primary">
                                                    @lang('admin.update')
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection