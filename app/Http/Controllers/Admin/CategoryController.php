<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\Storage;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::get();
        if (request()->ajax()) {
            return datatables()->of($categories)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_categories')) {
                        $button = '<a type="button" title="Edit" name="edit" href="categories/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_categories')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.categories.index');
    }

    public function create()
    {
        return view('admin.categories.create');
    }

    public function store(Request $request)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'  => 'required|unique:category_translations,name'];
        }

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image_ar) {
            Image::make($request->image_ar)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/category_images/ar/' . $request->image_ar->hashName()));
            $request_data['image_ar'] = $request->image_ar->hashName();
        }

        if ($request->image_en) {
            Image::make($request->image_en)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/category_images/en/' . $request->image_en->hashName()));
            $request_data['image_en'] = $request->image_en->hashName();
        }

        if ($request->icon) {
            Image::make($request->icon)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/category_icons/' . $request->icon->hashName()));
            $request_data['icon'] = $request->icon->hashName();
        }

        Category::create($request_data);
        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.categories.index');
    }

    public function edit(Category $category)
    {
        return view('admin.categories.edit')->with('category', $category);
    }

    public function update(Request $request, Category $category)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name' => ['required', Rule::unique('category_translations', 'name')->ignore($category->id, 'category_id')]];
        }

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image_ar) {
            if ($category->image_ar != 'default.png') {
                Storage::disk('public_uploads')->delete('/category_images/ar/' . $category->image_ar);
            }
            Image::make($request->image_ar)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/category_images/ar/' . $request->image_ar->hashName()));
            $request_data['image_ar'] = $request->image_ar->hashName();
        }

        if ($request->image_en) {
            if ($category->image_en != 'default.png') {
                Storage::disk('public_uploads')->delete('/category_images/en/' . $category->image_en);
            }
            Image::make($request->image_en)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/category_images/en/' . $request->image_en->hashName()));
            $request_data['image_en'] = $request->image_en->hashName();
        }

        if ($request->icon) {
            if ($category->icon != 'default.png') {
                Storage::disk('public_uploads')->delete('/category_icons/' . $category->icon);
            }
            Image::make($request->icon)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/category_icons/' . $request->icon->hashName()));
            $request_data['icon'] = $request->icon->hashName();
        }

        $category->update($request_data);
        Toastr::success(__('admin.updated_successfully'));
        return redirect()->route('admin.categories.index');
    }

    public function destroy($id)
    {
        $category = Category::findOrFail($id);
        if ($category->image_ar != 'default.png') {
            Storage::disk('public_uploads')->delete('/category_images/ar/' . $category->image_ar);
        }
        if ($category->image_en != 'default.png') {
            Storage::disk('public_uploads')->delete('/category_images/en/' . $category->image_en);
        }
        if ($category->icon != 'default.png') {
            Storage::disk('public_uploads')->delete('/category_icons/' . $category->icon);
        }
        $category->delete();
    }

    public function updateStatus(Request $request, $id)
    {
        $category           = Category::find($id);
        $active             = $request->get('active');
        $category->active   = $active;
        $category           = $category->save();

        if ($category) {
            return response(['success' => TRUE, "message" => 'Done']);
        }
    }
}
