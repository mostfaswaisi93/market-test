<?php

namespace App\Http\Controllers\Admin;

use App\Models\Country;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;

class CountryController extends Controller
{
    public function index()
    {
        $countries = Country::get();

        if (request()->ajax()) {
            return datatables()->of($countries)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_countries')) {
                        $button = '<a type="button" name="edit" href="countries/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_countries')) {
                        $button .= '<a type="button" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.countries.index');
    }
    public function create()
    {
        return view('admin.countries.create');
    }

    public function store(Request $request)
    {
        $rules = [
            'intro_state'   => 'required'
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'        => 'required|unique:country_translations,name'];
            $rules += [$locale . '.currency'    => 'required|unique:country_translations,currency'];
        }

        $request->validate($rules);
        Country::create($request->all());

        Toastr::success(__('admin.added_successfully'), 'Success');
        return redirect()->route('admin.countries.index');
    }

    public function edit(Country $country)
    {
        return view('admin.countries.edit', compact('country'));
    }

    public function update(Request $request, Country $country)
    {
        $rules = [
            'intro_state'   => 'required'
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'        => ['required', Rule::unique('country_translations', 'name')->ignore($country->id, 'country_id')]];
            $rules += [$locale . '.currency'    => ['required', Rule::unique('country_translations', 'currency')->ignore($country->id, 'country_id')]];
        }

        $request->validate($rules);
        $country->update($request->all());

        Toastr::success(__('admin.updated_successfully'), 'Success');
        return redirect()->route('admin.countries.index');
    }

    public function destroy(Country $country)
    {
        $country->delete();
        Toastr::success(__('admin.deleted_successfully'), 'Success');
        return redirect()->route('admin.countries.index');
    }
}
