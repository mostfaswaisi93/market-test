@extends('layouts.admin')

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">@lang('admin.edit_user')</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">@lang('admin.home')</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.users.index') }}">@lang('admin.users_management')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('admin.edit_user')</li>
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
                        <h4 class="card-title"><i class="feather icon-edit mr-25"></i>
                            @lang('admin.edit_user')</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            @include('partials._errors')
                            <form action="{{ route('admin.users.update', $user->id) }}" method="post"
                                enctype="multipart/form-data">
                                @csrf
                                @method('PUT')
                                <div class="row">
                                    <div class="col-12">
                                        <div class="media mb-2">
                                            <a class="mr-2 my-25" href="#">
                                                <img src="{{ $user->image_path }}" alt="users avatar"
                                                    class="users-avatar-shadow rounded image img-thumbnail image-preview"
                                                    height="90" width="90">
                                            </a>
                                            <div class="media-body mt-50">
                                                <div class="col-4 d-flex mt-1 px-0">
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
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>@lang('admin.name')</label>
                                                <input id="name" type="text" name="name" class="form-control"
                                                    value="{{ $user->name }}" placeholder="@lang('admin.name')">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>@lang('admin.username')</label>
                                                <input id="username" type="text" name="username" class="form-control"
                                                    value="{{ $user->username }}" placeholder="@lang('admin.username')">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <div class="controls">
                                                <label>@lang('admin.email')</label>
                                                <input id="email" type="email" name="email" class="form-control"
                                                    value="{{ $user->email }}" placeholder="@lang('admin.email')">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12"></div>
                                    <div class="col-12">
                                        <div class="table-responsive border rounded px-1">
                                            <h6 class="border-bottom py-1 mx-1 mb-0 font-medium-2">
                                                <i class="feather icon-lock mr-50"></i>
                                                @lang('admin.permissions')
                                            </h6> <br>
                                            @php
                                            $models = ['users', 'categories', 'items'];
                                            $maps = ['create', 'read', 'update', 'delete'];
                                            @endphp
                                            <ul class="nav nav-tabs">
                                                @foreach ($models as $index => $model)
                                                <li class="nav-item">
                                                    <a class="nav-link d-flex align-items-center {{ $index == 0 ? 'active' : '' }}"
                                                        href="#{{ $model }}" data-toggle="tab"><b>@lang('admin.' .
                                                            $model)</b></a>
                                                </li>
                                                @endforeach
                                            </ul>
                                            <div class="tab-content">
                                                @foreach ($models as $index=>$model)
                                                <div class="tab-pane {{ $index == 0 ? 'active in' : '' }}"
                                                    id="{{ $model }}">
                                                    @foreach ($maps as $map)
                                                    <label>
                                                        <div class="vs-checkbox-con vs-checkbox-primary">
                                                            <input type="checkbox" name="permissions[]"
                                                                {{ $user->hasPermission($map . '_' . $model) ? 'checked' : '' }}
                                                                value="{{ $map . '_' . $model }}">
                                                            <span class="vs-checkbox">
                                                                <span class="vs-checkbox--check">
                                                                    <i class="vs-icon feather icon-check"></i>
                                                                </span>
                                                            </span>
                                                            <span class=""><b>@lang('admin.' .$map)</b></span>
                                                        </div>
                                                    </label>
                                                    @endforeach
                                                </div>
                                                @endforeach
                                            </div>
                                            <br>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex flex-sm-row flex-column justify-content-end mt-1">
                                        <button type="submit" class="btn btn-primary mr-1 mb-1">
                                            @lang('admin.edit')
                                        </button>
                                        <button type="reset" class="btn btn-outline-warning mr-1 mb-1">
                                            @lang('admin.reset')
                                        </button>
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