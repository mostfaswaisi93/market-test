@extends('layouts.admin')

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">@lang('admin.users')</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">@lang('admin.home')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('admin.users')</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>

<section id="add-row">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Add rows</h4>
                </div>
                <div class="card-content">
                    <div class="card-body">
                        <p class="card-text">card-text</p>
                        <div class="btn-group">
                            @if (auth()->user()->hasPermission('create_users'))
                            <a href="{{ route('admin.users.create') }}">
                                <button class="btn btn-primary mb-2">
                                    <i class="feather icon-plus"></i> @lang('admin.create_user')
                                </button>
                            </a>
                            @else
                            <a href="#">
                                <button class="btn btn-primary mb-2 disabled">
                                    <i class="feather icon-plus"></i> @lang('admin.create_user')
                                </button>
                            </a>
                            @endif
                        </div>
                        <div class="table-responsive">
                            <table id="data-table" class="table table-striped table-bordered dt-responsive nowrap"
                                style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>@lang('admin.first_name')</th>
                                        <th>@lang('admin.last_name')</th>
                                        <th>@lang('admin.email')</th>
                                        <th>@lang('admin.image')</th>
                                        <th>@lang('admin.action')</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection

@push('scripts')

<script type="text/javascript">
    $(document).ready(function(){

    $('#data-table').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{{ route('admin.users.index') }}",
            },
            columns: [{
                    render: function(data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    },
                    searchable: false,
                    orderable: false
                },
                { data: 'first_name', name: 'first_name' },
                { data: 'last_name', name: 'last_name' },
                { data: 'email', name: 'email' },
                { data: 'created_at', name: 'created_at' },
                { data: 'action', name: 'action', orderable: false }
            ]
        });


    $(document).on('click', '.delete', function(){
        user_id = $(this).attr('id');
        $('#confirmModal').modal('show');
    });

    $('#ok_button').click(function(){
        $.ajax({
            url:"users/destroy/"+user_id,
            beforeSend:function(){
                $('#ok_button').text('Deleting...');
            },
            success: function (data) {
                    $('#confirmModal').modal('hide');
                    $('#data-table').DataTable().ajax.reload();
                    $('#ok_button').html('<i class="fa fa-check" aria-hidden="true"></i> Delete');
                    toastr.success('Deleted Done!', 'Success!');
                },
                error: function (data) {
                    console.log('error:', data);
                    $('#ok_button').html('<i class="fa fa-check" aria-hidden="true"></i> Delete');
            }
        });
    });


        $('#filterForm').submit(function(e){
            e.preventDefault();
            var formData = $('#filterForm').serialize();
            $('#data-table').DataTable().ajax.url( "{{ route('admin.users.index') }}" + '?'+  formData).load();
        });

    });

</script>

@endpush