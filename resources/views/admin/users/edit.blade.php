@extends('layouts.admin')

@section('content')

<div class="page-bar">
    <div class="page-title-breadcrumb">
        <div class="pull-left">
            <div class="page-title">@lang('site.edit_user')</div>
        </div>
        <ol class="breadcrumb page-breadcrumb pull-right">
            <li><i class="fa fa-dashboard"></i>&nbsp;<a class="parent-item"
                    href="{{ route('admin.index') }}">@lang('site.dashboard')</a>&nbsp;<i class="fa fa-angle-right"></i>
            </li>
            <li><a class="parent-item" href="{{ route('admin.users.index') }}">@lang('site.users')</a>&nbsp;<i
                    class="fa fa-angle-right"></i>
            </li>
            <li class="active">@lang('site.edit_user')</li>
        </ol>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <header class="panel-heading panel-heading-blue"><i class="fa fa-plus"></i>
                        @lang('site.edit_user')</header>
                    <div class="card-body ">
                        @include('partials._errors')
                        <form action="{{ route('admin.users.update', $user->id) }}" method="post"
                            enctype="multipart/form-data">
                            @csrf
                            @method('put')
                            <div class="form-body">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="name"
                                            class="control-label col-md-3">@lang('site.first_name')</label>
                                        <div class="col-md-6">
                                            <input type="text" name="first_name" class="form-control"
                                                value="{{ $user->first_name }}">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="name" class="control-label col-md-3">@lang('site.last_name')</label>
                                        <div class="col-md-6">
                                            <input type="text" name="last_name" class="form-control"
                                                value="{{ $user->last_name }}">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="name" class="control-label col-md-3">@lang('site.email')</label>
                                        <div class="col-md-6">
                                            <input type="email" name="email" class="form-control"
                                                value="{{ $user->email }}">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="name" class="control-label col-md-3">@lang('site.image')</label>
                                        <div class="col-md-6">
                                            <input type="file" name="image" class="form-control image">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <div class="col-md-3"></div>
                                        <div class="col-md-6">
                                            <img src="{{ asset('uploads/user_images/default.png') }}"
                                                style="width: 100px" class="img-thumbnail image-preview" alt="">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="control-label col-md-3">@lang('site.permissions')</label>
                                    </div>
                                    <div class="form-group col-md-12">

                                        <div class="nav nav-tabs">
                                            @php
                                            $models = ['users', 'categories', 'products'];
                                            $maps = ['create', 'read', 'update', 'delete'];
                                            @endphp
                                            <header class="panel-heading-gray custom-tab">
                                                <ul class="nav nav-tabs">
                                                    @foreach ($models as $index=>$model)
                                                    <li class="{{ $index == 0 ? 'active' : '' }}"><a
                                                            href="#{{ $model }}" data-toggle="tab">@lang('site.' .
                                                            $model)</a></li>
                                                    @endforeach
                                                </ul>
                                            </header>
                                            <div class="tab-content">
                                                @foreach ($models as $index=>$model)
                                                <div class="tab-pane fade {{ $index == 0 ? 'active in' : '' }}"
                                                    id="{{ $model }}">
                                                    @foreach ($maps as $map)
                                                    <label><input type="checkbox" name="permissions[]" class="icheck"
                                                            {{ $user->hasPermission($map . '_' . $model) ? 'checked' : '' }}
                                                            value="{{ $map . '_' . $model }}"> @lang('site.' .
                                                        $map)</label>
                                                    @endforeach
                                                </div>
                                                @endforeach
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <div class="btn-set pull-left">
                                    <button type="submit" class="btn blue"><i class="fa fa-edit"></i>
                                        @lang('site.edit')</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<section id="multiple-column-form">
    <div class="row match-height">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">@lang('site.create_user')</h4>
                </div>
                <div class="card-content">
                    <div class="card-body">
                        <button class="btn btn-info mb-2">
                            <i class="fa fa-arrow-left"></i> @lang('site.back')
                        </button>
                        @include('partials._errors')
                        <form action="{{ route('admin.users.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            @method('post')
                            <div class="form-body">
                                <div class="row">
                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            <input id="first_name" type="text" name="first_name" class="form-control"
                                                value="{{ old('first_name') }}" placeholder="@lang('site.first_name')">
                                            <label for="first_name">@lang('site.first_name')</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            <input id="last_name" type="text" name="last_name" class="form-control"
                                                value="{{ old('last_name') }}" placeholder="@lang('site.last_name')">
                                            <label for="last_name">@lang('site.last_name')</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            <input id="email" type="text" name="email" class="form-control"
                                                value="{{ old('email') }}" placeholder="@lang('site.email')">
                                            <label for="email">@lang('site.email')</label>
                                        </div>
                                    </div>
                                    <div class="form-group col-12">
                                        <input id="image" type="file" name="image" class="form-control image">
                                    </div>
                                    <div class="form-group col-12">
                                        <img src="{{ asset('uploads/user_images/default.png') }}" style="width: 100px"
                                            class="img-thumbnail image-preview" alt="">
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            <input id="password" type="password" name="password" class="form-control"
                                                value="{{ old('password') }}" placeholder="@lang('site.password')">
                                            <label for="password">@lang('site.password')</label>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-12">
                                        <div class="form-label-group">
                                            <input id="password_confirmation" type="password"
                                                name="password_confirmation" class="form-control"
                                                value="{{ old('password') }}"
                                                placeholder="@lang('site.password_confirmation')">
                                            <label
                                                for="password_confirmation">@lang('site.password_confirmation')</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="table-responsive border rounded px-1">
                                            <h6 class="border-bottom py-1 mx-1 mb-0 font-medium-2"><i
                                                    class="feather icon-lock mr-50"></i>@lang('site.permissions')</h6>
                                            <table class="table table-borderless">
                                                <thead>
                                                    <tr>
                                                        <th>Module</th>
                                                        <th>Read</th>
                                                        <th>Write</th>
                                                        <th>Create</th>
                                                        <th>Delete</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Users</td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox1"
                                                                    class="custom-control-input" checked>
                                                                <label class="custom-control-label"
                                                                    for="users-checkbox1"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox2"
                                                                    class="custom-control-input"><label
                                                                    class="custom-control-label"
                                                                    for="users-checkbox2"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox3"
                                                                    class="custom-control-input"><label
                                                                    class="custom-control-label"
                                                                    for="users-checkbox3"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox4"
                                                                    class="custom-control-input" checked>
                                                                <label class="custom-control-label"
                                                                    for="users-checkbox4"></label>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Articles</td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox5"
                                                                    class="custom-control-input"><label
                                                                    class="custom-control-label"
                                                                    for="users-checkbox5"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox6"
                                                                    class="custom-control-input" checked>
                                                                <label class="custom-control-label"
                                                                    for="users-checkbox6"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox7"
                                                                    class="custom-control-input"><label
                                                                    class="custom-control-label"
                                                                    for="users-checkbox7"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox8"
                                                                    class="custom-control-input" checked>
                                                                <label class="custom-control-label"
                                                                    for="users-checkbox8"></label>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Staff</td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox9"
                                                                    class="custom-control-input" checked>
                                                                <label class="custom-control-label"
                                                                    for="users-checkbox9"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox10"
                                                                    class="custom-control-input" checked>
                                                                <label class="custom-control-label"
                                                                    for="users-checkbox10"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox11"
                                                                    class="custom-control-input"><label
                                                                    class="custom-control-label"
                                                                    for="users-checkbox11"></label>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="custom-control custom-checkbox"><input
                                                                    type="checkbox" id="users-checkbox12"
                                                                    class="custom-control-input"><label
                                                                    class="custom-control-label"
                                                                    for="users-checkbox12"></label>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="form-group col-12">
                                        <div class="nav nav-tabs">
                                            @php
                                            $models = ['users', 'categories', 'products'];
                                            $maps = ['create', 'read', 'update', 'delete'];
                                            @endphp
                                            <ul class="nav nav-tabs">
                                                @foreach ($models as $index=>$model)
                                                <li class="{{ $index == 0 ? 'active' : '' }}"><a href="#{{ $model }}"
                                                        data-toggle="tab">@lang('site.' . $model)</a></li>
                                                @endforeach
                                            </ul>
                                            <div class="tab-content">
                                                @foreach ($models as $index=>$model)
                                                <div class="tab-pane fade {{ $index == 0 ? 'active in' : '' }}"
                                                    id="{{ $model }}">
                                                    @foreach ($maps as $map)
                                                    <label><input type="checkbox" name="permissions[]" class="icheck"
                                                            value="{{ $map . '_' . $model }}"> @lang('site.' .
                                                        $map)</label>
                                                    @endforeach
                                                </div>
                                                @endforeach
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 d-flex flex-sm-row flex-column justify-content-end mt-1">
                                        <button type="submit" class="btn btn-primary mr-1 mb-1">
                                            <i class="fa fa-plus"></i>
                                            @lang('site.add')
                                        </button>
                                        <button type="reset" class="btn btn-outline-warning mr-1 mb-1">
                                            <i class="fa fa-refresh"></i>
                                            @lang('site.Reset')
                                        </button>
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

@endsection