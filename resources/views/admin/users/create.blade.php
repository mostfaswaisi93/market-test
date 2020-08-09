@extends('layouts.admin')

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">@lang('site.create_user')</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">@lang('site.home')</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.users.index') }}">@lang('site.users_management')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('site.create_user')</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content-body">
    <section>
        <div class="card">
            <div class="card-content">
                <div class="card-body">
                    @include('partials._errors')
                    <form action="{{ route('admin.users.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('post')
                        <div class="row">
                            <div class="col-12">
                                <div class="media mb-2">
                                    <a class="mr-2 my-25" href="#">
                                        <img src="{{ asset('uploads/user_images/default.png') }}" alt="users avatar"
                                            class="users-avatar-shadow rounded image" height="90" width="90">
                                    </a>
                                    <div class="media-body mt-50">
                                        <h4 class="card-title"><i class="feather icon-user-plus mr-25"></i>
                                            @lang('site.create_user')</h4>
                                        <div class="col-4 d-flex mt-1 px-0">
                                            <input type="file" class="form-control-file" name="image" id="image">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <div class="controls">
                                        <label>@lang('site.first_name')</label>
                                        <input id="first_name" type="text" name="first_name" class="form-control"
                                            value="{{ old('first_name') }}" placeholder="@lang('site.first_name')">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <div class="controls">
                                        <label>@lang('site.last_name')</label>
                                        <input id="last_name" type="text" name="last_name" class="form-control"
                                            value="{{ old('last_name') }}" placeholder="@lang('site.last_name')">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <div class="controls">
                                        <label>@lang('site.email')</label>
                                        <input id="email" type="email" name="email" class="form-control"
                                            value="{{ old('email') }}" placeholder="@lang('site.email')">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <label>@lang('site.status')</label>
                                    <select class="form-control">
                                        <option>Active</option>
                                        <option>Blocked</option>
                                        <option>deactivated</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <div class="controls">
                                        <label>@lang('site.password')</label>
                                        <input id="password" type="password" name="password" class="form-control"
                                            placeholder="@lang('site.password')">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-12">
                                <div class="form-group">
                                    <div class="controls">
                                        <label>@lang('site.password_confirmation')</label>
                                        <input id="password_confirmation" type="password" name="password_confirmation"
                                            class="form-control" placeholder="@lang('site.password_confirmation')">
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="table-responsive border rounded px-1">
                                    <h6 class="border-bottom py-1 mx-1 mb-0 font-medium-2">
                                        <i class="feather icon-lock mr-50"></i>
                                        @lang('site.permissions')
                                    </h6> <br>
                                    @php
                                    $models = ['users', 'categories', 'products'];
                                    $maps = ['create', 'read', 'update', 'delete'];
                                    @endphp
                                    <ul class="nav nav-tabs">
                                        @foreach ($models as $index => $model)
                                        <li class="nav-item">
                                            <a class="nav-link d-flex align-items-center {{ $index == 0 ? 'active' : '' }}"
                                                href="#{{ $model }}" data-toggle="tab"><b>@lang('site.' .
                                                    $model)</b></a>
                                        </li>
                                        @endforeach
                                    </ul>
                                    <div class="tab-content">
                                        @foreach ($models as $index=>$model)
                                        <div class="tab-pane {{ $index == 0 ? 'active in' : '' }}" id="{{ $model }}">
                                            @foreach ($maps as $map)
                                            <label>
                                                <div class="vs-checkbox-con vs-checkbox-primary">
                                                    <input type="checkbox" name="permissions[]"
                                                        value="{{ $map . '_' . $model }}">
                                                    <span class="vs-checkbox">
                                                        <span class="vs-checkbox--check">
                                                            <i class="vs-icon feather icon-check"></i>
                                                        </span>
                                                    </span>
                                                    <span class=""><b>@lang('site.' .$map)</b></span>
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
                                    @lang('site.add')
                                </button>
                                <button type="reset" class="btn btn-outline-warning mr-1 mb-1">
                                    @lang('site.reset')
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</div>

@endsection