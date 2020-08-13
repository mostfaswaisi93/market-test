@extends('layouts.admin')

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">@lang('admin.create_customer')</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">@lang('admin.home')</a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.customers.index') }}">@lang('admin.customers_management')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('admin.create_customer')</li>
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
                        <h4 class="card-title"> @lang('admin.create_customer')</h4>
                    </div>
                    <div class="card-content">
                        <div class="card-body">
                            @include('partials._errors')
                            <form action="{{ route('admin.customers.store') }}" method="post"
                                enctype="multipart/form-data">
                                @csrf
                                @method('POST')
                                <div class="row">
                                    @foreach (config('translatable.locales') as $locale)
                                    <div class="col-md-6 col-12">
                                        <div class="form-group">
                                            <label>@lang('admin.' . $locale . '.name')</label>
                                            <input id="name" type="text" name="{{ $locale }}[name]" class="form-control"
                                                value="{{ old($locale . '.name') }}"
                                                placeholder="@lang('admin.' . $locale . '.name')">
                                        </div>
                                    </div>
                                    @endforeach
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

                            <form action="{{ route('admin.customers.store') }}" method="post">

                                {{ csrf_field() }}
                                {{ method_field('post') }}

                                <div class="form-group">
                                    <label>@lang('admin.name')</label>
                                    <input type="text" name="name" class="form-control" value="{{ old('name') }}">
                                </div>

                                @for ($i = 0; $i < 2; $i++) <div class="form-group">
                                    <label>@lang('admin.phone')</label>
                                    <input type="text" name="phone[]" class="form-control">
                        </div>
                        @endfor

                        <div class="form-group">
                            <label>@lang('admin.address')</label>
                            <textarea name="address" class="form-control">{{ old('address') }}</textarea>
                        </div>

                        <div class="form-group">
                            <button type="submit" class="btn btn-primary"><i class="fa fa-plus"></i>
                                @lang('admin.add')</button>
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