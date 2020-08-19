<?php

namespace App\Http\Controllers\Admin;

use App\Models\Slider;
use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;

class SliderController extends Controller
{
    public function index()
    {
        $sliders = Slider::with(['user'])->get();
        if (request()->ajax()) {
            return datatables()->of($sliders)
                ->addColumn('user', function ($data) {
                    return $data->user->username;
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

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'        => 'required|unique:city_translations,name'];
        }

        $request->validate($rules);
        $request_data = $request->all();
        Slider::create($request_data);

        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.sliders.index');
    }

    public function edit(Slider $city)
    {
        $users = User::active()->get();
        return view('admin.sliders.edit', compact('users', 'city'));
    }

    public function update(Request $request, Slider $city)
    {
        $rules = [
            'user_id'   => 'required'
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'        => ['required', Rule::unique('city_translations', 'name')->ignore($city->id, 'city_id')]];
        }

        $request->validate($rules);
        $city->update($request->all());
        Toastr::success(__('admin.updated_successfully'));
        return redirect()->route('admin.sliders.index');
    }

    public function destroy($id)
    {
        $city = Slider::findOrFail($id);
        $city->delete();
    }

    public function updateStatus(Request $request, $id)
    {
        $city           = Slider::find($id);
        $active         = $request->get('active');
        $city->active   = $active;
        $city           = $city->save();

        if ($city) {
            return response(['success' => TRUE, "message" => 'Done']);
        }
    }
}
