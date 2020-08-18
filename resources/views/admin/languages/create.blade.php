@extends('layouts.admin')
@section('title') @lang('admin.create_language') @endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">@lang('admin.create_language')</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">@lang('admin.home')</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.languages.index') }}">@lang('admin.languages_management')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('admin.create_language')</li>
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
                            @lang('admin.create_language')
                        </h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            @include('partials._errors')
                            <form action="{{ route('admin.languages.store') }}" method="post"
                                enctype="multipart/form-data">
                                @csrf
                                @method('POST')
                                <div class="row">
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>@lang('admin.abbr')</label>
                                                <input id="abbr" type="text" name="abbr" class="form-control"
                                                    value="{{ old('abbr') }}" placeholder="@lang('admin.abbr')">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>@lang('admin.name')</label>
                                                <input id="name" type="text" name="name" class="form-control"
                                                    value="{{ old('name') }}" placeholder="@lang('admin.name')">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>@lang('admin.direction')</label>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <hr>
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