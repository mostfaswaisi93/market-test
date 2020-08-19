<div class="modal fade" id="messageModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Modal Title</h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <tr>
                        <td width="25%">اسم المرسل:</td>
                        <td class="message-sender"></td>
                    </tr>
                    <tr>
                        <td width="10%">تاريخ الإرسال:</td>
                        <td class="message-date"></td>
                    </tr>
                    <tr>
                        <td width="10%">رقم الهاتف:</td>
                        <td class="message-mobile"></td>
                    </tr>
                    <tr>
                        <td width="10%">الرسالة:</td>
                        <td class="message-details"></td>
                    </tr>
                    <tr class="message-image" style="display: none">
                        <td width="10%">الصورة:</td>
                        <td>
                            <img width="100%" class="image-src" src="" />
                        </td>
                    </tr>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn dark btn-outline" data-dismiss="modal">إغلاق</button>
            </div>
        </div>
    </div>
</div>


<!-- Show Contact Modal -->

<div class="modal fade" id="showModal" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Show Contact</h4>
            </div>
            <div class="modal-body">
                <form method="post" class="form-horizontal">
                    <div class="form-group">
                        <label for="showTitle" class="control-label col-md-2">Title: </label>
                        <div class="col-md-9">
                            <div id="showTitle" name="title" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="showDepartment" class="control-label col-md-2">Department: </label>
                        <div class="col-md-9">
                            <div id="showDepartment" name="department" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="showDescription" class="col-md-2 control-label">Description: </label>
                        <div class="col-md-9">
                            <div id="showDescription" name="description" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="showStatus" class="col-md-2 control-label">Status: </label>
                        <div class="col-md-9">
                            <div id="showStatus" name="status" class="showStyle"></div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-success"><i class="fas fa-thumbs-up"></i>
                            OK</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>