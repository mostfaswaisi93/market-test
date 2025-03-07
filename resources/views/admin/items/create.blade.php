@extends('layouts.admin')
@section('title') @lang('admin.create_item') @endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">@lang('admin.create_item')</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">@lang('admin.home')</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.items.index') }}">@lang('admin.items_management')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('admin.create_item')</li>
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
                            <i class="feather icon-plus-square mr-25"></i>
                            @lang('admin.create_item')
                        </h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            @include('partials._errors')
                            <form action="{{ route('admin.items.store') }}" method="post" enctype="multipart/form-data">
                                @csrf
                                @method('POST')
                                <div class="row">
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label>@lang('admin.category')</label>
                                            <select name="category_id" class="form-control">
                                                <option value="">@lang('admin.all_categories')</option>
                                                @foreach ($categories as $category)
                                                <option value="{{ $category->id }}"
                                                    {{ old('category_id') == $category->id ? 'selected' : '' }}>
                                                    {{ $category->name }}
                                                </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    @foreach (config('translatable.locales') as $locale)
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <label>@lang('admin.' . $locale . '.name')</label>
                                            <input id="name" type="text" name="{{ $locale }}[name]" class="form-control"
                                                value="{{ old($locale . '.name') }}"
                                                placeholder="@lang('admin.' . $locale . '.name')">
                                        </div>
                                    </div>
                                    @endforeach
                                    @foreach (config('translatable.locales') as $locale)
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label>@lang('admin.' . $locale . '.description')</label>
                                            <textarea name="{{ $locale }}[description]" id="description"
                                                class="form-control ckeditor">{{ old($locale . '.description') }}</textarea>
                                        </div>
                                    </div>
                                    @endforeach
                                    <div class="col-md-3 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>@lang('admin.purchase_price')</label>
                                                <input type="number" name="purchase_price" class="form-control"
                                                    value="{{ old('purchase_price') }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>@lang('admin.sale_price')</label>
                                                <input type="number" name="sale_price" class="form-control"
                                                    value="{{ old('sale_price') }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-12">
                                        <div class="media mb-2">
                                            <a class="mr-2 my-25" href="#">
                                                <img src="{{ asset('uploads/item_images/default.png') }}"
                                                    alt="users avatar"
                                                    class="users-avatar-shadow rounded image img-thumbnail image-preview"
                                                    height="70" width="70">
                                            </a>
                                            <div class="media-body mt-50">
                                                <div class="col-12 d-flex mt-1 px-0">
                                                    <input type="file" class="form-control-file image" name="image"
                                                        id="image" style="display:none;">
                                                    <button class="btn btn-primary" onclick="FileUpload();">
                                                        <i class="fa fa-plus"></i>
                                                        @lang('admin.file_upload')
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>@lang('admin.stock')</label>
                                                <input type="number" name="stock" class="form-control"
                                                    value="{{ old('stock') }}">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <button type="submit" class="btn btn-primary">
                                                    @lang('admin.add')
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