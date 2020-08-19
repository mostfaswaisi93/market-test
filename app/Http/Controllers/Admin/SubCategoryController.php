<?php

namespace App\Http\Controllers\Admin;

use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;

class SubCategoryController extends Controller
{
    public function index()
    {
        $subcategories = SubCategory::get();
        if (request()->ajax()) {
            return datatables()->of($subcategories)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_subcategories')) {
                        $button = '<a type="button" title="Edit" name="edit" href="subcategories/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_subcategories')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.subcategories.index');
    }

    public function create()
    {
        return view('admin.subcategories.create');
    }

    public function store(Request $request)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'  => 'required|unique:subcategory_translations,name'];
        }

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image_ar) {
            Image::make($request->image_ar)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/subcategory_images/ar/' . $request->image_ar->hashName()));
            $request_data['image_ar'] = $request->image_ar->hashName();
        }

        if ($request->image_en) {
            Image::make($request->image_en)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/subcategory_images/en/' . $request->image_en->hashName()));
            $request_data['image_en'] = $request->image_en->hashName();
        }

        if ($request->icon) {
            Image::make($request->icon)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/subcategory_icons/' . $request->icon->hashName()));
            $request_data['icon'] = $request->icon->hashName();
        }

        SubCategory::create($request_data);
        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.subcategories.index');
    }

    public function edit(SubCategory $subcategory)
    {
        return view('admin.subcategories.edit')->with('subcategory', $subcategory);
    }

    public function update(Request $request, SubCategory $subcategory)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name' => ['required', Rule::unique('subcategory_translations', 'name')->ignore($subcategory->id, 'subcategory_id')]];
        }

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image_ar) {
            if ($subcategory->image_ar != 'default.png') {
                Storage::disk('public_uploads')->delete('/subcategory_images/ar/' . $subcategory->image_ar);
            }
            Image::make($request->image_ar)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/subcategory_images/ar/' . $request->image_ar->hashName()));
            $request_data['image_ar'] = $request->image_ar->hashName();
        }

        if ($request->image_en) {
            if ($subcategory->image_en != 'default.png') {
                Storage::disk('public_uploads')->delete('/subcategory_images/en/' . $subcategory->image_en);
            }
            Image::make($request->image_en)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/subcategory_images/en/' . $request->image_en->hashName()));
            $request_data['image_en'] = $request->image_en->hashName();
        }

        if ($request->icon) {
            if ($subcategory->icon != 'default.png') {
                Storage::disk('public_uploads')->delete('/subcategory_icons/' . $subcategory->icon);
            }
            Image::make($request->icon)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/subcategory_icons/' . $request->icon->hashName()));
            $request_data['icon'] = $request->icon->hashName();
        }

        $subcategory->update($request_data);
        Toastr::success(__('admin.updated_successfully'));
        return redirect()->route('admin.subcategories.index');
    }

    public function destroy($id)
    {
        $subcategory = SubCategory::findOrFail($id);
        if ($subcategory->image_ar != 'default.png') {
            Storage::disk('public_uploads')->delete('/subcategory_images/ar/' . $subcategory->image_ar);
        }
        if ($subcategory->image_en != 'default.png') {
            Storage::disk('public_uploads')->delete('/subcategory_images/en/' . $subcategory->image_en);
        }
        if ($subcategory->icon != 'default.png') {
            Storage::disk('public_uploads')->delete('/subcategory_icons/' . $subcategory->icon);
        }
        $subcategory->delete();
    }

    public function updateStatus(Request $request, $id)
    {
        $subcategory           = SubCategory::find($id);
        $active             = $request->get('active');
        $subcategory->active   = $active;
        $subcategory           = $subcategory->save();

        if ($subcategory) {
            return response(['success' => TRUE, "message" => 'Done']);
        }
    }
}
