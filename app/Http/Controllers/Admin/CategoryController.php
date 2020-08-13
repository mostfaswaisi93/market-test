<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;

class CategoryController extends Controller
{

    public function index()
    {
        $categories = Category::get();

        if (request()->ajax()) {
            return datatables()->of($categories)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_categories')) {
                        $button = '<a type="button" name="edit" href="categories/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_categories')) {
                        $button .= '<a type="button" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
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
            $rules += [$locale . '.name' => ['required', Rule::unique('category_translations', 'name')]];
        }

        $request->validate($rules);
        Category::create($request->all());

        Toastr::success(__('admin.added_successfully'), 'Success');
        return redirect()->route('admin.categories.index');
    }

    public function edit(Category $category)
    {
        return view('admin.categories.edit', compact('category'));
    }

    public function update(Request $request, Category $category)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {

            $rules += [$locale . '.name' => ['required', Rule::unique('category_translations', 'name')->ignore($category->id, 'category_id')]];
        }

        $request->validate($rules);
        $category->update($request->all());

        Toastr::success(__('admin.updated_successfully'), 'Success');
        return redirect()->route('admin.categories.index');
    }

    public function destroy(Category $category)
    {
        $category->delete();
        Toastr::success(__('admin.deleted_successfully'), 'Success');
        return redirect()->route('admin.categories.index');
    }
}
