@extends('layouts.admin')

@section('content')

<div class="page-bar">
    <div class="page-title-breadcrumb">
        <div class="pull-left">
            <div class="page-title">@lang('admin.edit_user')</div>
        </div>
        <ol class="breadcrumb page-breadcrumb pull-right">
            <li><i class="fa fa-dashboard"></i>&nbsp;<a class="parent-item"
                    href="{{ route('admin.index') }}">@lang('admin.dashboard')</a>&nbsp;<i class="fa fa-angle-right"></i>
            </li>
            <li><a class="parent-item" href="{{ route('admin.users.index') }}">@lang('admin.users')</a>&nbsp;<i
                    class="fa fa-angle-right"></i>
            </li>
            <li class="active">@lang('admin.edit_user')</li>
        </ol>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <header class="panel-heading panel-heading-blue"><i class="fa fa-plus"></i>
                        @lang('admin.edit_user')</header>
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
                                            class="control-label col-md-3">@lang('admin.first_name')</label>
                                        <div class="col-md-6">
                                            <input type="text" name="first_name" class="form-control"
                                                value="{{ $user->first_name }}">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="name" class="control-label col-md-3">@lang('admin.last_name')</label>
                                        <div class="col-md-6">
                                            <input type="text" name="last_name" class="form-control"
                                                value="{{ $user->last_name }}">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="name" class="control-label col-md-3">@lang('admin.email')</label>
                                        <div class="col-md-6">
                                            <input type="email" name="email" class="form-control"
                                                value="{{ $user->email }}">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="name" class="control-label col-md-3">@lang('admin.image')</label>
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
                                        <label class="control-label col-md-3">@lang('admin.permissions')</label>
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
                                                            href="#{{ $model }}" data-toggle="tab">@lang('admin.' .
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
                                                            value="{{ $map . '_' . $model }}"> @lang('admin.' .
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
                                        @lang('admin.edit')</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection