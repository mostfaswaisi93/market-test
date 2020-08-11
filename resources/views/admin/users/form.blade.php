<!-- User Modal -->

<div id="userModal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" id="userForm" class="form-horizontal" enctype="multipart/form-data">
                    @csrf
                    <span id="form_result"></span>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="name" class="control-label col-md-2">@lang('admin.name'): </label>
                                <div class="col-md-12">
                                    <input type="text" name="name" id="name" class="form-control"
                                        placeholder="@lang('admin.enter_name')" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="gender" class="control-label col-md-2">@lang('admin.gender'): </label>
                                <div class="col-md-12">
                                    <select class="form-control selectRef select2" id="ref_id" name="ref_id"
                                        style="width: 100%;">
                                        <optgroup label="Select Gender">
                                            @foreach ($refs as $ref)
                                            <option value="{{$ref->id}}">{{$ref->name}}</option>
                                            @endforeach
                                        </optgroup>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="phone" class="control-label col-md-2">@lang('admin.phone'): </label>
                                <div class="col-md-12">
                                    <input type="text" name="phone" id="phone" class="form-control"
                                        placeholder="@lang('admin.enter_phone')" />
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="nickname" class="control-label col-md-2">@lang('admin.nickname'): </label>
                                <div class="col-md-12">
                                    <input type="text" name="nickname" id="nickname" class="form-control"
                                        placeholder="@lang('admin.enter_nickname')" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="age" class="control-label col-md-2">@lang('admin.age'): </label>
                                <div class="col-md-12">
                                    <input type="number" name="age" id="age" class="form-control"
                                        placeholder="@lang('admin.enter_age')" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="notes" class="control-label col-md-2">@lang('admin.notes'): </label>
                        <div class="col-md-12">
                            <textarea class="form-control" name="notes" cols="30" rows="7" id="notes"
                                placeholder="@lang('admin.enter_notes')"></textarea>
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" name="action" id="action" />
                <input type="hidden" name="hidden_id" id="hidden_id" />
                <button type="submit" class="btn btn-lg btn-primary" id="saveBtn" name="saveBtn" value="Add">
                    @lang('admin.save') </button>
                <button type="button" class="btn btn-lg btn-secondary" data-dismiss="modal">
                    @lang('admin.close') </button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Confirm Delete -->

<div class="modal fade" id="confirmModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <h4 style="margin: 0;" class="text-center">{{ trans('admin.are_you_sure_user') }}
                </h4>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" name="ok_button" id="ok_button">
                    <i class="fa fa-check" aria-hidden="true"></i>
                    {{ trans('admin.delete') }}</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i>
                    {{ trans('admin.close') }}</button>
            </div>
        </div>
    </div>
</div>