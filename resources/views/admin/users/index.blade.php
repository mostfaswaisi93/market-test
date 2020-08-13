@extends('layouts.admin')

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">@lang('admin.users_management')</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">@lang('admin.home')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('admin.users_management')</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content-body">
    <section>
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">@lang('admin.users_management')</h4>
            </div>
            <div class="card-content">
                <div class="card-body">
                    <div class="btn-group">
                        @if (auth()->user()->hasPermission('create_users'))
                        <a href="{{ route('admin.users.create') }}">
                            <button class="btn btn-primary mb-2">
                                <i class="feather icon-user-plus mr-25"></i>
                                @lang('admin.create_user')
                            </button>
                        </a>
                        @else
                        <a href="#">
                            <button class="btn btn-primary mb-2 disabled">
                                <i class="feather icon-user-plus"></i> @lang('admin.create_user')
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
                                    <th>@lang('admin.image')</th>
                                    <th>@lang('admin.name')</th>
                                    <th>@lang('admin.username')</th>
                                    <th>@lang('admin.email')</th>
                                    <th>@lang('admin.created_at')</th>
                                    <th>@lang('admin.action')</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Confirm Delete -->

<div class="modal fade" id="confirmModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Confirmation</h4>
            </div>
            <div class="modal-body">
                <h4 style="margin: 0;" class="text-center">Are you sure you want to remove this data?</h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" name="ok_button" id="ok_button">
                    <i class="fa fa-check" aria-hidden="true"></i>
                    Delete</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i>
                    Close</button>
            </div>
        </div>
    </div>
</div>

@endsection

@push('scripts')

<script type="text/javascript">
    $(document).ready(function(){
        $('#data-table').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 2, "desc" ]],
            ajax: {
                url: "{{ route('admin.users.index') }}",
            },
            columns: [{
                    render: function(data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }, searchable: false, orderable: false
                },
                { data: 'image_path', name: 'image_path',
                    render: function(data, type, full, meta) {
                        return "<img src=" + data + " width='70px' class='img-thumbnail' />";
                    }, orderable: false , searchable: false
                },
                { data: 'name', name: 'name' },
                { data: 'username', name: 'username' },
                { data: 'email', name: 'email' },
                { data: 'created_at', name: 'created_at', format: 'M/D/YYYY' },
                { data: 'action', name: 'action', orderable: false }
            ]
        });
    });
    
    $(document).on('click', '.delete', function(){
        task_id = $(this).attr('id');
        $('#confirmModal').modal('show');
    });

    $('#ok_button').click(function(){
        $.ajax({
            url:"tasks/destroy/"+task_id,
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

// function deleteItem(item, path="banners"){
//     swal({
//         title: 'هل أنت متأكد من ذلك؟',
//         type: 'warning',
//         showCancelButton: true,
//         confirmButtonColor: '#3085d6',
//         cancelButtonColor: '#d33',
//         confirmButtonText: 'نعم',
//         cancelButtonText:'إلغاء'
//     }).then(function(result){
//         if(result.value){
//             $.ajax({
//                 type: "delete",
//                 dataType : 'json',
//                 url: "https://1stt.app/1teacher/admin/" + path + '/' + item,
//                 data: { _token: 'aZFjVakfkWsSmwC8GLch1v5WKihqXxCVc2Uk04Jz' ,id: item},
//                 success: function(data){
//                     console.log(data);
//                     toastr.success('تم حذف العنصر بنجاح', {timeOut: 5000});
//                     $('#' + path + '-table').DataTable().ajax.reload( null, false);
//                 }
//             });
//         }
//     });
// }
</script>

@endpush