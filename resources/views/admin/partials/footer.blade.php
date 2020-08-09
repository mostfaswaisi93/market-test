<!-- BEGIN: Footer-->
<footer class="footer footer-static footer-light">
    <p class="clearfix blue-grey lighten-2 mb-0"><span class="float-md-left d-block d-md-inline-block mt-25">
            &copy; @lang('site.all_rights')</span>
        <span class="float-md-right d-none d-md-block"> <a href="https://github.com/mostfaswaisi93">mostfaswaisi93</a>
            <i class="feather icon-heart pink"></i></span>
        <button class="btn btn-primary btn-icon scroll-top" type="button"><i class="feather icon-arrow-up"></i></button>
    </p>
</footer>
<!-- END: Footer-->

<!-- BEGIN: Vendor JS-->
<script src="{{ url('admin_files/app-assets/vendors/js/vendors.min.js') }}"></script>
<!-- BEGIN Vendor JS-->

<!-- BEGIN: Page Vendor JS-->
<script src="{{ url('admin_files/app-assets/vendors/js/tables/datatable/pdfmake.min.js') }}"></script>
<script src="{{ url('admin_files/app-assets/vendors/js/tables/datatable/vfs_fonts.js') }}"></script>
<script src="{{ url('admin_files/app-assets/vendors/js/tables/datatable/datatables.min.js') }}"></script>
<script src="{{ url('admin_files/app-assets/vendors/js/tables/datatable/datatables.buttons.min.js') }}"></script>
<script src="{{ url('admin_files/app-assets/vendors/js/tables/datatable/buttons.html5.min.js') }}"></script>
<script src="{{ url('admin_files/app-assets/vendors/js/tables/datatable/buttons.print.min.js') }}"></script>
<script src="{{ url('admin_files/app-assets/vendors/js/tables/datatable/buttons.bootstrap.min.js') }}"></script>
<script src="{{ url('admin_files/app-assets/vendors/js/tables/datatable/datatables.bootstrap4.min.js') }}"></script>
<!-- END: Page Vendor JS-->

<!-- BEGIN: Theme JS-->
<script src="{{ url('admin_files/app-assets/js/core/app-menu.js') }}"></script>
<script src="{{ url('admin_files/app-assets/js/core/app.js') }}"></script>
<script src="{{ url('admin_files/app-assets/js/scripts/components.js') }}"></script>
<!-- END: Theme JS-->

<!-- BEGIN: Page JS-->
<script src="{{ url('admin_files/app-assets/js/scripts/datatables/datatable.js') }}"></script>
<!-- END: Page JS-->

<!-- BEGIN: Custom JS-->
<script src="{{ url('admin_files/app-assets/js/custom.js') }}"></script>
<!-- END: Custom JS-->

@stack('scripts')

<script>
    $(document).ready(function () {
        // $('.sidebar-menu').tree();

        // //icheck
        // $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
        //     checkboxClass: 'icheckbox_minimal-blue',
        //     radioClass: 'iradio_minimal-blue'
        // });

        //delete
        $('.delete').click(function (e) {

            var that = $(this)

            e.preventDefault();

            var n = new Noty({
                text: "@lang('site.confirm_delete')",
                type: "warning",
                killer: true,
                buttons: [
                    Noty.button("@lang('site.yes')", 'btn btn-success mr-2', function () {
                        that.closest('form').submit();
                    }),

                    Noty.button("@lang('site.no')", 'btn btn-primary mr-2', function () {
                        n.close();
                    })
                ]
            });

            n.show();

        });//end of delete

        // image preview
        $(".image").change(function () {

            if (this.files && this.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.image-preview').attr('src', e.target.result);
                }

                reader.readAsDataURL(this.files[0]);
            }

        });

    })


</script>

</body>
<!-- END: Body-->

</html>