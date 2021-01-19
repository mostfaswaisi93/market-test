@extends('layouts.layout')

@section('css')
    <link rel="stylesheet" href="{{ asset('global/vendor/select2/select2.css') }}">
    <link rel="stylesheet" href="{{ asset('global/vendor/dropify/dropify.css') }}">
    <link rel="stylesheet" href="{{ asset('css/tagsinput.css') }}">
@endsection



@section('content')

    <section class="main-content">
        <div class="kt-subheader   kt-grid__item" id="kt_subheader">
            <div class="kt-subheader__main">
                <h3 class="kt-subheader__title">
                    {{trans('panel.addNewItem')}}
                <span class="kt-subheader__separator kt-hidden"></span>
            </div>
        </div>
        <div class="page-tabs">

            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                    <form class="add-form" action="{{route('items.insert')}}" method="POST"
                          enctype="multipart/form-data">
                        @csrf
                        @if(count($errors) > 0 )
                            <div class='alert alert-danger'>
                                <button data-dismiss='alert' class='close m' type='button'>&times;</button>
                                <ol>
                                    @foreach($errors->all() as $error)
                                        <li>{{$error}}</li>
                                    @endforeach
                                </ol>
                            </div>
                        @endif
                        <div class="row">
                            <div class="col-md-8">
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="nameAr">{{trans('panel.nameArabic')}}</label>
                                            <input type="text" class="form-control" id="nameAr" name="name_ar"
                                                   value="{{ old('name_ar') }}" aria-describedby="nameHelp"
                                                   placeholder="{{trans('panel.nameArabic')}}">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="unit_name_ar">الوحده بالعربية</label>
                                            <input type="text" class="form-control" id="unit_name_ar"
                                                   name="unit_name_ar"
                                                   value="{{ old('unit_name_ar') }}" aria-describedby="nameHelp"
                                                   placeholder="الوحده بالعربية">
                                        </div>
                                    </div>


                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="nameEn">{{trans('panel.nameEnglish')}}</label>
                                            <input type="text" class="form-control" id="nameEn" name="name_en"
                                                   value="{{ old('name_en') }}" aria-describedby="nameHelp"
                                                   placeholder="{{trans('panel.nameEnglish')}}">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="unit_name_en">الوحده بالانجليزي</label>
                                            <input type="text" class="form-control" id="unit_name_en"
                                                   name="unit_name_en"
                                                   value="{{ old('unit_name_en') }}" aria-describedby="nameHelp"
                                                   placeholder="الوحده بالانجليزي">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="nameTr">{{trans('panel.nameTurkish')}}</label>
                                            <input type="text" class="form-control" id="nameTr" name="name_tr"
                                                   value="{{ old('name_tr') }}" aria-describedby="nameHelp"
                                                   placeholder="{{trans('panel.nameTurkish')}}">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="unit_name_ar">الوحده بالتركية</label>
                                            <input type="text" class="form-control" id="unit_name_tr"
                                                   name="unit_name_tr"
                                                   value="{{ old('unit_name_tr') }}" aria-describedby="nameHelp"
                                                   placeholder="الوحده بالتركية">
                                        </div>
                                    </div>
                                </div>



                                <div class="row">
                                    <div class="col-3">
                                        <div class="form-group">
                                            <label for="category">{{trans('panel.category')}}</label>
                                            <select class="form-control" id="category" name="category_id">
                                                <option value="0" selected disabled>{{trans('panel.category')}}...
                                                </option>


                                                    @foreach($categories as $category)

                                                            <option
                                                                {{ old('category_id') == $category->id ? 'selected' : '' }} value="{{ $category->id }}">{{$category->name_ar}}
                                                                </option>
                                                        @endforeach
                                                   

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-2 {{ old('category_id') > 3 ? '' : 'hidden' }}">
                                        <p>{{trans('panel.offer')}}</p>
                                        <div class="form-group">
                                            <label class="switch toggle-switch">
                                                <input type="checkbox" name="offer">
                                                <span class="slider round"></span>
                                            </label>
                                        </div>
                                    </div>

                                    <!--<div class="col-2 {{ old('category_id') > 3 ? '' : 'hidden' }}">-->
                                    <!--    <p class="mb-2">{{trans('panel.special')}}</p>-->
                                    <!--    <div class="form-group">-->
                                    <!--        <label class="switch toggle-switch">-->
                                    <!--            <input type="checkbox" name="special">-->
                                    <!--            <span class="slider round"></span>-->
                                    <!--        </label>-->
                                    <!--    </div>-->
                                    <!--</div>-->

                                    <div class="col-2 ">
                                        <label for="lang">{{trans('panel.language')}}</label>
                                        <div class="form-group">
                                            <select name="lang" id="lang" class="form-control">
                                                <option value="0">{{trans('panel.all')}}</option>
                                                <option value="1">{{trans('panel.arabic')}}</option>
                                                <option value="2">{{trans('panel.turkish')}}</option>
                                            </select>
                                        </div>
                                    </div>

                                </div>
                                <div class="row">

                                    <div class="col-6 {{ old('category_id') > 3 ? '' : 'hidden' }}">
                                        <label for="sub_category_id">{{trans('panel.SubCategory')}}</label>
                                        <div class="form-group">
                                            <select name="sub_category_id" id="sub_category_id" class="form-control">
                                                <option value="0">{{trans('panel.SubCategory')}}</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" id="ss">
                                    <div class="col-12  {{ old('category_id') > 3 ? '' : 'withcke hidden' }}">
                                        <p class="mb-2">{{trans('panel.offerPlace')}}</p>
                                        <div class="form-group">

                                            @foreach($categories as $category)
                                                @if($category->id > 3  )
                                                    {{--                                                    {{ old('category_id') == $category->id ? 'checked' : '' }}--}}

                                                    <input
                                                        name="viewer[]" id="ss"
                                                        type="checkbox"
                                                        class="view_{{ $category->id }}"
                                                        value="{{ $category->id }}"> {{ $category->name_ar }}


                                                @endif
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="price">{{trans('panel.price')}}</label>
                                            <input type="text" class="form-control" name="price"
                                                   value="{{ old('price') }}" id="price" aria-describedby="nameHelp"
                                                   placeholder=" {{trans('panel.price')}}">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="priceAfter">{{trans('panel.priceAfterDiscountFound')}}</label>
                                            <input type="text" class="form-control" name="discount_price"
                                                   value="{{ old('discount_price') }}" id="priceAfter"
                                                   aria-describedby="nameHelp"
                                                   placeholder="{{trans('panel.priceAfterDiscount')}} ">
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="highest_quantity">{{trans('panel.limitOfBuy')}} </label>
                                            <input type="text" class="form-control" id="highest_quantity"
                                                   name="highest_quantity" value="{{ old('highest_quantity') }}"
                                                   aria-describedby="nameHelp"
                                                   placeholder="{{trans('panel.limitOfBuy')}} ">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-4">
                                        <div class="form-group">
                                            <label for="limitStoreBuy">حد الشراء بالمخازن</label>
                                            <input type="text" class="form-control" name="limitStoreBuy"
                                                   value="{{ old('limitStoreBuy') }}" id="limitStoreBuy" aria-describedby="nameHelp"
                                                   placeholder=" حد الشراء بالمخازن">
                                        </div>
                                    </div>

                                </div>


                                <div class="row nocke">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="areaPrice">اسعار المناطق </label>
                                            <div style="background-color: whitesmoke;">
                                                @foreach($locations as $location)
                                                    <div class="row mb-3">
                                                        <div class="col">
                                                            <input id="location_{{$location->id}}" type="checkbox"
                                                                   class="location" name="location[]"
                                                                   value="{{ $location->id }}">
                                                            <label for="location_{{$location->id}}">
                                                                {{$location->name_ar}}
                                                            </label>
                                                        </div>

                                                        <div class="col">
                                                            <input type="text" disabled="disabled"
                                                                   class="form-control hidden location_price_{{$location->id}}"
                                                                   name="location_price[]"
                                                                   value="{{ old('price') }}"
                                                                   aria-describedby="nameHelp"
                                                                   placeholder="{{trans('panel.price')}}">
                                                        </div>
                                                        <div class="col">
                                                            <input type="text" disabled="disabled"
                                                                   class="form-control hidden location_discount_price_{{$location->id}}"
                                                                   name="location_discount_price[]"
                                                                   value="{{ old('discount_price') }}"
                                                                   aria-describedby="nameHelp"
                                                                   placeholder="السعر بعد الخصم ">
                                                        </div>
                                                    </div>
                                                @endforeach

                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row withcke  ">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="deatialAr">{{trans('panel.detailesAr')}}</label>
                                            <textarea id="cke" class="cke" name="details_ar" class="form-control"
                                                      rows="5">{{ old('details_ar') }}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <div class="row withcke ">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="deatialTR">{{trans('panel.detailesTr')}}</label>
                                            <textarea id="cke1" class="cke" name="details_tr" class="form-control"
                                                      rows="5">{{ old('details_tr1') }}</textarea>
                                        </div>
                                    </div>
                                </div>

                                <div class="row withcke ">
                                    <div class="col">
                                        <div class="form-group">
                                            <label for="deatialTR">{{trans('panel.detailesEn')}}</label>
                                            <textarea id="cke2" class="cke" name="details_en" class="form-control"
                                                      rows="5">{{ old('details_en') }}</textarea>
                                        </div>
                                    </div>
                                </div>




                            </div>
                            <div class="col-md-4">
                                <div class="upload-image">
                                    <h4>{{trans('panel.uplodeImage')}}</h4>
                                    <div class="form-group">
                                        <input type="file" name="image" id="input-file-now" class="dropify" value=""
                                               data-plugin="dropify" data-default-file=""/>
                                    </div>
                                </div>

                                <div class="activation mt-5">
                                    <h4 class="mb-4">{{trans('panel.active')}}</h4>
                                    <div class="form-group">
                                        <label class="switch toggle-switch">
                                            <input type="checkbox" name="active" checked>
                                            <span class="slider round"></span>
                                        </label>
                                        <?php  ?>
                                    </div>
                                    {{--<button type="button" class="btn btn-toggle" data-toggle="button" aria-pressed="false" autocomplete="off">
                                        <div class="handle"></div>
                                    </button>--}}
                                </div>

                                <div class="activation mt-5">
                                    <h4 class="mb-4">{{trans('panel.publishing')}}</h4>
                                    <input type="submit" name="" class="btn btn-primary btn-block"
                                           value="{{trans('panel.send')}}"/>
                                    <a href="{{route('items.view')}}"
                                       class="btn btn-danger btn-block">{{trans('panel.back')}}</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>


@endsection


@section('js')
    <script src="{{ asset('js/tagsinput.js') }}"></script>
    <script src="{{ asset('global/vendor/select2/select2.full.min.js') }}"></script>

    <script src="{{ asset('assets/examples/js/forms/advanced.min.js') }}"></script>
    <!-- CK Editor -->
    <script src="https://cdn.ckeditor.com/4.7.3/full/ckeditor.js"></script>

    <script src="{{ asset('global/vendor/dropify/dropify.min.js') }}"></script>
    <script src="{{ asset('global/js/Plugin/dropify.js') }}"></script>
    <script>

        $(document).ready(function () {


            $('.location').change(function () {
                var id = $(this).val();

                if ($(this).is(":checked")) {
                    $('.location_price_' + id).removeClass('hidden').prop("disabled", false);
                    $('.location_discount_price_' + id).removeClass('hidden').attr("disabled", false);
                } else {
                    $('.location_price_' + id).addClass('hidden').prop("disabled", true);
                    $('.location_discount_price_' + id).addClass('hidden').attr("disabled", true);
                }

            });
            $('.cke').each(function () {
                CKEDITOR.replace(this.id, {
                    contentsLangDirection: 'rtl',
                    language: 'ar',
                    contentsCss: "{{asset('assets/css/editor.css')}}')}}",
                });

            });
            $('select').select2({
                placeholder: 'Select an option'
            });
            $('.dropify').dropify();
            $('select[name=category_id]').change(function () {
                //nocke
                //withcke
                if ($(this).val() > 3) {
                    $('input[name=special]').parent().parent().parent().removeClass('hidden');
                    $('input[name=offer]').parent().parent().parent().removeClass('hidden');

                    $.ajax({
                        url: '{{ route("items.sub.category") }}',
                        type: 'POST',
                        data: {
                            category_id : $(this).val(),
                        },
                        success: function (data) {
                            $('select[name=sub_category_id]').html(data);
                            $('select[name=sub_category_id]').parent().parent().removeClass('hidden');
                        }
                    });


                    // $('.nocke').addClass('hidden');
                    // $('.withcke').removeClass('hidden');
                    var ca_id = $(this).val();
                    $('#ss input[type=checkbox]').each(function () {
                        // $(this).parent().removeClass('hidden');
                        var classView = '.view_' + $(this).val();
                        $('#ss').find(classView).removeAttr('checked', 'checked').removeAttr('disabled', 'disabled');
                        if (ca_id == $(this).val()) {


                            $('#ss').find(classView).attr('checked', 'checked').attr('disabled', 'disabled');
                        }
                    });

                } else {
                    $('input[name=special]').parent().parent().parent().addClass('hidden');
                    $('input[name=offer]').parent().parent().parent().addClass('hidden');
                    $('select[name=sub_category_id]').parent().parent().addClass('hidden');
                    // $('select[name=lang]').parent().parent().addClass('hidden');
                    // $('.nocke').removeClass('hidden');
                    // $('.withcke').addClass('hidden');
                }
            });
        });

    </script>
@endsection
