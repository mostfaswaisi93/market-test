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
                            <a href="{{ route('admin.users.index') }}">@lang('site.users')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('site.create_user')</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <header class="panel-heading panel-heading-blue"><i class="fa fa-plus"></i>
                        @lang('site.create_user')</header>
                    <div class="card-body ">
                        <div class="row">
                            <div class="col-md-6 col-sm-6 col-xs-6">
                                <div class="btn-group">
                                    <a href="{{ route('admin.users.index') }}">
                                        <button class="btn btn-info">
                                            <i class="fa fa-arrow-left"></i> @lang('site.back')
                                        </button>
                                    </a>
                                </div>
                            </div>
                        </div>

                        @include('partials._errors')
                        <form action="{{ route('admin.users.store') }}" method="post" enctype="multipart/form-data">
                            @csrf
                            @method('post')
                            <div class="form-body">
                                <div class="row">
                                    <div class="form-group col-md-12">
                                        <label for="name"
                                            class="control-label col-md-3">@lang('site.first_name')</label>
                                        <div class="col-md-6">
                                            <input type="text" name="first_name" class="form-control"
                                                value="{{ old('first_name') }}">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="name" class="control-label col-md-3">@lang('site.last_name')</label>
                                        <div class="col-md-6">
                                            <input type="text" name="last_name" class="form-control"
                                                value="{{ old('last_name') }}">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="name" class="control-label col-md-3">@lang('site.email')</label>
                                        <div class="col-md-6">
                                            <input type="email" name="email" class="form-control"
                                                value="{{ old('email') }}">
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
                                        <label for="name" class="control-label col-md-3">@lang('site.password')</label>
                                        <div class="col-md-6">
                                            <input type="password" name="password" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label for="name"
                                            class="control-label col-md-3">@lang('site.password_confirmation')</label>
                                        <div class="col-md-6">
                                            <input type="password" name="password_confirmation" class="form-control">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <label class="control-label col-md-3">@lang('site.permissions')</label>
                                    </div>
                                    <div class="form-group col-md-12">

                                        <div class="nav nav-tabs">
                                            @php
                                            $models = ['users', 'doctors', 'secretaries'];
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
                                                            value="{{ $map . '_' . $model }}">
                                                        @lang('site.' . $map)</label>
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
                                    <button type="submit" class="btn blue"><i class="fa fa-plus"></i>
                                        @lang('site.add')</button>
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