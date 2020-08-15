// Image Preview
$(".image").change(function() {

    if (this.files && this.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('.image-preview').attr('src', e.target.result);
        }

        reader.readAsDataURL(this.files[0]);
    }

});

$(".img_ar").change(function() {

    if (this.files && this.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('.img_ar-preview').attr('src', e.target.result);
        }

        reader.readAsDataURL(this.files[0]);
    }

});

$(".img_en").change(function() {

    if (this.files && this.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('.img_en-preview').attr('src', e.target.result);
        }

        reader.readAsDataURL(this.files[0]);
    }

});

$(".icon").change(function() {

    if (this.files && this.files[0]) {
        var reader = new FileReader();

        reader.onload = function(e) {
            $('.icon-preview').attr('src', e.target.result);
        }

        reader.readAsDataURL(this.files[0]);
    }

});