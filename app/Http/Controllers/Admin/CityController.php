<?php

namespace App\Http\Controllers\Admin;

use App\Models\City;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;

class CityController extends Controller
{
    public function index()
    {
        $cities = City::get();
        if (request()->ajax()) {
            return datatables()->of($cities)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_cities')) {
                        $button = '<a type="button" title="Edit" name="edit" href="cities/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_cities')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.cities.index');
    }

    public function create()
    {
        return view('admin.cities.create');
    }

    public function store(Request $request)
    {
        $rules = [
            'iso_code'      => 'required|max:3|unique:cities',
            'phone_code'    => 'required|unique:cities'
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'        => 'required|unique:city_translations,name'];
            $rules += [$locale . '.currency'    => 'required|unique:city_translations,currency'];
        }

        $request->validate($rules);

        City::create($request->all());
        Toastr::success(__('admin.added_successfully'), 'Success');
        return redirect()->route('admin.cities.index');
    }

    public function edit(City $city)
    {
        return view('admin.cities.edit', compact('city'));
    }

    public function update(Request $request, City $city)
    {
        $rules = [
            'iso_code'      => ['required', Rule::unique('cities')->ignore($city->id),],
            'phone_code'      => ['required', Rule::unique('cities')->ignore($city->id),],

            'iso_code'      => 'required|max:3|unique:cities',
            'phone_code'    => 'required|unique:cities'
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'        => ['required', Rule::unique('city_translations', 'name')->ignore($city->id, 'city_id')]];
            $rules += [$locale . '.currency'    => ['required', Rule::unique('city_translations', 'currency')->ignore($city->id, 'city_id')]];
        }

        $request->validate($rules);
        $city->update($request->all());

        Toastr::success(__('admin.updated_successfully'), 'Success');
        return redirect()->route('admin.cities.index');
    }

    public function destroy($id)
    {
        $city = City::findOrFail($id);
        $city->delete();
    }

    public function updateStatus(Request $request, $id)
    {
        $city           = City::find($id);
        $active         = $request->get('active');
        $city->active   = $active;
        $city           = $city->save();

        if ($city) {
            return response(['success' => TRUE, "message" => 'Done']);
        }
    }
}
