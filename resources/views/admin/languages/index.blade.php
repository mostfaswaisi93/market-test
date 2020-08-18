@extends('layouts.admin')
@section('title') @lang('admin.languages_management') @endsection

@section('content')

<div class="content-header row">
    <div class="content-header-left col-md-9 col-12 mb-2">
        <div class="row breadcrumbs-top">
            <div class="col-12">
                <h2 class="content-header-title float-left mb-0">@lang('admin.languages_management')</h2>
                <div class="breadcrumb-wrapper col-12">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ route('admin.index') }}">@lang('admin.home')</a>
                        </li>
                        <li class="breadcrumb-item active">@lang('admin.languages_management')</li>
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
                <h4 class="card-title">@lang('admin.languages_management')</h4>
            </div>
            <div class="card-content">
                <div class="card-body">
                    <div class="btn-group">
                        @if (auth()->user()->hasPermission('create_languages'))
                        <a href="{{ route('admin.languages.create') }}">
                            <button class="btn btn-primary mb-2">
                                <i class="feather icon-user-plus mr-25"></i>
                                @lang('admin.create_language')
                            </button>
                        </a>
                        @else
                        <a href="#">
                            <button class="btn btn-primary mb-2 disabled">
                                <i class="feather icon-user-plus"></i> @lang('admin.create_language')
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
                                    <th>@lang('admin.abbr')</th>
                                    <th>@lang('admin.name')</th>
                                    <th>@lang('admin.direction')</th>
                                    <th>@lang('admin.created_at')</th>
                                    <th>@lang('admin.status')</th>
                                    <th>@lang('admin.change_status')</th>
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

@endsection

@push('scripts')

<script type="text/javascript">
    var status  = '';
    $(document).ready(function(){
        $('#data-table').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            order: [[ 2, "desc" ]],
            ajax: {
                url: "{{ route('admin.languages.index') }}",
            },
            columns: [{
                    render: function(data, type, row, meta) {
                        return meta.row + meta.settings._iDisplayStart + 1;
                    }, searchable: false, orderable: false
                },
                { data: 'abbr', name: 'abbr' },
                { data: 'name', name: 'name' },
                { data: 'direction', name: 'direction' },
                { data: 'created_at', name: 'created_at', format: 'M/D/YYYY' },
                { data: 'active', name: 'status',
                    render: function(data, type, full, meta) {
                        var text = data ? "{{ trans('admin.active') }}" : "{{ trans('admin.inactive') }}";
                        var color = data ? "success" : "danger"; 
                        return "<div class='badge badge-" +color+ "'>"+ text +"</div>";
                    }, orderable: false , searchable: false
                },
                { data: 'active', name: 'status' },
                { data: 'action', name: 'action', orderable: false }
            ], "columnDefs": [ {
                "targets": 6,
                render: function (data, type, row, meta){
                var $select = $(`
                    <select class='status form-control'
                    id='status' onchange=selectStatus(${row.id})>
                    <option value='1'>{{ trans('admin.active') }}</option>
                    <option value='0'>{{ trans('admin.inactive') }}</option>
                    </select>
                `);
                $select.find('option[value="'+row.active+'"]').attr('selected', 'selected');
                return $select[0].outerHTML
                }
            } ],
        });
    });
    
    $(document).on('click', '.delete', function(){
        language_id = $(this).attr('id');
        swal({
            title: "{{ trans('admin.are_sure') }}",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '{{ trans('admin.yes') }}',
            cancelButtonText: '{{ trans('admin.cancel') }}'
        }).then(function(result){
            if(result.value){
                $.ajax({
                    url:"languages/destroy/" + language_id,
                    success: function(data){
                        console.log(data);
                        $('#data-table').DataTable().ajax.reload();
                        toastr.success('{{ trans('admin.deleted_successfully') }}!');
                    }
                });
            }
        });
    });

    function selectStatus(id){
        language_id = id;
    }

    $(document).on('change', '#status', function(e) {
        var status_language = $(this).find("option:selected").val();
        console.log(status_language)
        if(status_language == "1"){
            toastr.success('{{ trans('admin.status_changed') }}!');
        }else if(status_language == "0"){
            toastr.success('{{ trans('admin.status_changed') }}!');
        } else {
            toastr.error('{{ trans('admin.status_not_changed') }}!');
        }
        $.ajax({
            url:"languages/updateStatus/"+language_id+"?active="+status_language,
            headers: {
                'X-CSRF-Token': "{{ csrf_token() }}"
            },
            method:"POST",
            data:{},
            contentType: false,
            cache: false,
            processData: false,
            dataType:"json",
            success:function(data)
                {
                var html = '';
                if(data.errors)
                {
                    html = '<div class="alert alert-danger">';
                    for(var count = 0; count < data.errors.length; count++)
                {
                    html += '<p>' + data.errors[count] + '</p>';
                }
                    html += '</div>';
                }
                if(data.success)
                {
                    $('#data-table').DataTable().ajax.reload();
                }
            }
        });
    });
</script>

@endpush