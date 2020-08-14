<?php

namespace App\Http\Controllers\Admin;

use App\Models\Location;
use App\Models\Country;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;

class LocationController extends Controller
{
    public function index()
    {
        $countries = Country::all();
        $locations = Location::get();

        if (request()->ajax()) {
            return datatables()->of($locations)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_locations')) {
                        $button = '<a type="button" name="edit" href="locations/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_locations')) {
                        $button .= '<a type="button" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.locations.index')->with('countries', $countries);
    }

    public function create()
    {
        $countries = Country::all();
        return view('admin.locations.create')->with('countries', $countries);
    }

    public function store(Request $request)
    {
        $rules = [
            'country_id'   => 'required'
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'        => 'required|unique:product_translations,name'];
        }

        $request->validate($rules);
        Location::create($request->all());

        Toastr::success(__('admin.added_successfully'), 'Success');
        return redirect()->route('admin.locations.index');
    }

    public function edit(Location $location)
    {
        return view('admin.locations.edit', compact('location'));
    }

    public function update(Request $request, Location $location)
    {
        $rules = [
            'country_id'   => 'required'
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name' => ['required', Rule::unique('location_translations', 'name')->ignore($location->id, 'location_id')]];
        }

        $request->validate($rules);
        $location->update($request->all());

        Toastr::success(__('admin.updated_successfully'), 'Success');
        return redirect()->route('admin.locations.index');
    }

    public function destroy(Location $location)
    {
        $location->delete();
        Toastr::success(__('admin.deleted_successfully'), 'Success');
        return redirect()->route('admin.locations.index');
    }
}
