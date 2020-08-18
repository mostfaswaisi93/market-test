<?php

namespace App\Http\Controllers\Admin;

use App\Models\Unit;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;

class UnitController extends Controller
{
    public function index()
    {
        $units = Unit::get();
        if (request()->ajax()) {
            return datatables()->of($units)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_units')) {
                        $button = '<a type="button" title="Edit" name="edit" href="units/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" title="Edit" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_units')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.units.index');
    }

    public function create()
    {
        return view('admin.units.create');
    }

    public function store(Request $request)
    {
        $rules = [
            'country_id'   => 'required'
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'        => 'required|unique:unit_translations,name'];
        }

        $request->validate($rules);
        $request_data = $request->all();
        Unit::create($request_data);

        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.units.index');
    }

    public function edit(Unit $unit)
    {
        return view('admin.units.edit', compact('unit'));
    }

    public function update(Request $request, Unit $unit)
    {
        $rules = [
            'country_id'   => 'required'
        ];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name'        => ['required', Rule::unique('unit_translations', 'name')->ignore($unit->id, 'unit_id')]];
        }

        $request->validate($rules);
        $unit->update($request->all());
        Toastr::success(__('admin.updated_successfully'));
        return redirect()->route('admin.units.index');
    }

    public function destroy($id)
    {
        $unit = Unit::findOrFail($id);
        $unit->delete();
    }

    public function updateStatus(Request $request, $id)
    {
        $unit           = Unit::find($id);
        $active         = $request->get('active');
        $unit->active   = $active;
        $unit           = $unit->save();

        if ($unit) {
            return response(['success' => TRUE, "message" => 'Done']);
        }
    }
}
