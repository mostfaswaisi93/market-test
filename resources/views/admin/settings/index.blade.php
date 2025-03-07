@extends('layouts.admin')
@section('title') @lang('admin.settings') @endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">@lang('admin.update_settings')</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">@lang('admin.home')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('admin.update_settings')</li>
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
                        <h4 class="card-title"><i class="fa fa-file-text"></i> @lang('admin.update_settings')</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body ">
                            @include('partials._errors')
                            <form action="{{ route('admin.settings.update') }}" method="post" role="form">
                                @csrf
                                <input type="hidden" name="id" value="{{ $settings->id }}">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label>@lang('admin.name')</label>
                                                    <input id="name" type="text" name="name" class="form-control"
                                                        value="{{ $settings->name }}" placeholder="@lang('admin.name')">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label>@lang('admin.title')</label>
                                                    <input id="title" type="text" name="title" class="form-control"
                                                        value="{{ $settings->title }}"
                                                        placeholder="@lang('admin.title')">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label>@lang('admin.value')</label>
                                                    <input id="value" type="text" name="value" class="form-control"
                                                        value="{{ $settings->value }}"
                                                        placeholder="@lang('admin.value')">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label>@lang('admin.type')</label>
                                                    <input id="type" type="text" name="type" class="form-control"
                                                        value="{{ $settings->type }}" placeholder="@lang('admin.type')">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label>@lang('admin.options')</label>
                                                    <input id="options" type="text" name="options" class="form-control"
                                                        value="{{ $settings->options }}"
                                                        placeholder="@lang('admin.options')">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-12">
                                            <div class="form-group">
                                                <div class="controls">
                                                    <label>@lang('admin.sorting_number')</label>
                                                    <input id="sorting_number" type="text" name="sorting_number"
                                                        class="form-control" value="{{ $settings->sorting_number }}"
                                                        placeholder="@lang('admin.sorting_number')">
                                                </div>
                                            </div>
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