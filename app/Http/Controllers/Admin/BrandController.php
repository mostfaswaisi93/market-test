<?php

namespace App\Http\Controllers\Admin;

use App\Models\Brand;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;

class BrandController extends Controller
{
    public function index()
    {
        $brands = Brand::get();
        if (request()->ajax()) {
            return datatables()->of($brands)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_brands')) {
                        $button = '<a type="button" title="Edit" name="edit" href="brands/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_brands')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.brands.index');
    }

    public function create()
    {
        return view('admin.brands.create');
    }

    public function store(Request $request)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'  => 'required|unique:brand_translations,name'];
        }

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image) {
            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/brand_images/' . $request->image->hashName()));
            $request_data['image'] = $request->image->hashName();
        }

        Brand::create($request_data);
        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.brands.index');
    }

    public function edit(Brand $brand)
    {
        return view('admin.brands.edit')->with('brand', $brand);
    }

    public function update(Request $request, Brand $brand)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name' => ['required', Rule::unique('brand_translations', 'name')->ignore($brand->id, 'brand_id')]];
        }

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image) {
            if ($brand->image != 'default.png') {
                Storage::disk('public_uploads')->delete('/brand_images/' . $brand->image);
            }

            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/brand_images/' . $request->image->hashName()));
            $request_data['image'] = $request->image->hashName();
        }

        $brand->update($request_data);
        Toastr::success(__('admin.updated_successfully'));
        return redirect()->route('admin.brands.index');
    }

    public function destroy($id)
    {
        $brand = Brand::findOrFail($id);
        if ($brand->image != 'default.png') {
            Storage::disk('public_uploads')->delete('/brand_images/' . $brand->image);
        }
        $brand->delete();
    }

    public function updateStatus(Request $request, $id)
    {
        $brand           = Brand::find($id);
        $active          = $request->get('active');
        $brand->active   = $active;
        $brand           = $brand->save();

        if ($brand) {
            return response(['success' => TRUE, "message" => 'Done']);
        }
    }
}
