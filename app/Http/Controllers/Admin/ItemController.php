<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use App\Models\Item;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rule;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;

class ItemController extends Controller
{
    public function index(Request $request)
    {
        $categories = Category::all();
        $items = Item::get();

        if (request()->ajax()) {
            return datatables()->of($items)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_items')) {
                        $button = '<a type="button" name="edit" href="items/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_items')) {
                        $button .= '<a type="button" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }

        return view('admin.items.index')->with('categories', $categories);
    }

    public function create()
    {
        $categories = Category::all();
        return view('admin.items.create')->with('categories', $categories);
    }

    public function store(Request $request)
    {
        $rules = [
            'category_id'   => 'required'
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'        => 'required|unique:item_translations,name'];
            $rules += [$locale . '.description' => 'required'];
        }

        $rules += [
            'purchase_price'    => 'required',
            'sale_price'        => 'required',
            'stock'             => 'required',
        ];

        $request->validate($rules);

        $request_data = $request->all();

        if ($request->image) {

            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/item_images/' . $request->image->hashName()));

            $request_data['image'] = $request->image->hashName();
        }

        Item::create($request_data);
        Toastr::success(__('admin.added_successfully'), 'Success');
        return redirect()->route('admin.items.index');
    }

    public function edit(Item $item)
    {
        $categories = Category::all();
        return view('admin.items.edit', compact('categories', 'item'));
    }

    public function update(Request $request, Item $item)
    {
        $rules = [
            'category_id'   => 'required'
        ];

        foreach (config('translatable.locales') as $locale) {

            $rules += [$locale . '.name'        => ['required', Rule::unique('item_translations', 'name')->ignore($item->id, 'item_id')]];
            $rules += [$locale . '.description' => 'required'];
        }

        $rules += [
            'purchase_price'    => 'required',
            'sale_price'        => 'required',
            'stock'             => 'required',
        ];

        $request->validate($rules);

        $request_data = $request->all();

        if ($request->image) {

            if ($item->image != 'default.png') {

                Storage::disk('public_uploads')->delete('/item_images/' . $item->image);
            }

            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/item_images/' . $request->image->hashName()));

            $request_data['image'] = $request->image->hashName();
        }

        $item->update($request_data);
        Toastr::success(__('admin.updated_successfully'), 'Success');
        return redirect()->route('admin.items.index');
    }

    public function destroy(Item $item)
    {
        if ($item->image != 'default.png') {

            Storage::disk('public_uploads')->delete('/item_images/' . $item->image);
        }

        $item->delete();
        Toastr::success(__('admin.deleted_successfully'), 'Success');
        return redirect()->route('admin.items.index');
    }
}
