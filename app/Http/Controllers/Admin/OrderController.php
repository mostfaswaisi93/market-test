<?php

namespace App\Http\Controllers\Admin;

use App\Models\Slider;
use App\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Brian2694\Toastr\Facades\Toastr;

class OrderController extends Controller
{
    public function index()
    {
        $sliders = Slider::with(['user'])->get();
        if (request()->ajax()) {
            return datatables()->of($sliders)
                ->addColumn('user', function ($data) {
                    return $data->user->name;
                })
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_sliders')) {
                        $button = '<a type="button" title="Edit" name="edit" href="sliders/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_sliders')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.sliders.index');
    }

    public function create()
    {
        $users = User::active()->get();
        return view('admin.sliders.create')->with('users', $users);
    }

    public function store(Request $request)
    {
        $rules = [
            'user_id'   => 'required'
        ];

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image) {
            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/slider_images/' . $request->image->hashName()));
            $request_data['image'] = $request->image->hashName();
        }

        Slider::create($request_data);
        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.sliders.index');
    }

    public function edit(Slider $slider)
    {
        $users = User::active()->get();
        return view('admin.sliders.edit', compact('users', 'slider'));
    }

    public function update(Request $request, Slider $slider)
    {
        $rules = [
            'user_id'   => 'required'
        ];

        $request->validate($rules);
        $request_data = $request->all();

        if ($request->image) {
            if ($slider->image != 'default.png') {
                Storage::disk('public_uploads')->delete('/slider_images/' . $slider->image);
            }

            Image::make($request->image)
                ->resize(300, null, function ($constraint) {
                    $constraint->aspectRatio();
                })
                ->save(public_path('uploads/slider_images/' . $request->image->hashName()));
            $request_data['image'] = $request->image->hashName();
        }

        $slider->update($request_data);
        Toastr::success(__('admin.updated_successfully'));
        return redirect()->route('admin.sliders.index');
    }

    public function destroy($id)
    {
        $slider = Slider::findOrFail($id);
        if ($slider->image != 'default.png') {
            Storage::disk('public_uploads')->delete('/slider_images/' . $slider->image);
        }
        $slider->delete();
    }

    public function updateStatus(Request $request, $id)
    {
        $slider           = Slider::find($id);
        $active           = $request->get('active');
        $slider->active   = $active;
        $slider           = $slider->save();

        if ($slider) {
            return response(['success' => TRUE, "message" => 'Done']);
        }
    }
}
