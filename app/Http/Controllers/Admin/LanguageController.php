<?php

namespace App\Http\Controllers\Admin;

use App\Models\Language;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Validation\Rule;
use Brian2694\Toastr\Facades\Toastr;

class LanguageController extends Controller
{
    public function index()
    {
        $languages = Language::get();

        if (request()->ajax()) {
            return datatables()->of($languages)
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('update_languages')) {
                        $button = '<a type="button" name="edit" href="languages/' . $data->id . '/edit" class="edit btn btn-sm btn-icon"><i class="fa fa-edit"></i></a>';
                    } else {
                        $button = '<a type="button" name="edit" id="' . $data->id . '" class="edit btn btn-sm btn-icon disabled"><i class="fa fa-edit"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_languages')) {
                        $button .= '<a type="button" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.languages.index');
    }

    public function create()
    {
        return view('admin.languages.create');
    }

    public function store(Request $request)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {
            $rules += [$locale . '.name' => ['required', Rule::unique('language_translations', 'name')]];
        }

        $request->validate($rules);
        Language::create($request->all());

        Toastr::success(__('admin.added_successfully'), 'Success');
        return redirect()->route('admin.languages.index');
    }

    public function edit(Language $language)
    {
        return view('admin.languages.edit', compact('language'));
    }

    public function update(Request $request, Language $language)
    {
        $rules = [];

        foreach (config('translatable.locales') as $locale) {

            $rules += [$locale . '.name' => ['required', Rule::unique('language_translations', 'name')->ignore($language->id, 'language_id')]];
        }

        $request->validate($rules);
        $language->update($request->all());

        Toastr::success(__('admin.updated_successfully'), 'Success');
        return redirect()->route('admin.languages.index');
    }

    public function destroy(Language $language)
    {
        $language->delete();
        Toastr::success(__('admin.deleted_successfully'), 'Success');
        return redirect()->route('admin.languages.index');
    }
}
