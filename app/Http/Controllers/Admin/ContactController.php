<?php

namespace App\Http\Controllers\Admin;

use App\Models\Contact;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Brian2694\Toastr\Facades\Toastr;

class ContactController extends Controller
{
    public function index()
    {
        $contacts = Contact::with(['customer'])->get();

        if (request()->ajax()) {
            return datatables()->of($contacts)
                ->addColumn('customer', function ($data) {
                    return $data->customer->name;
                })
                ->addColumn('action', function ($data) {
                    if (auth()->user()->hasPermission('show_contacts')) {
                        $button = '<a type="button" title="Show" name="show" id="' . $data->id . '" class="showBtn btn btn-sm btn-icon"><i class="fa fa-folder-open"></i></a>';
                    } else {
                        $button = '<a type="button" title="Show" name="show" id="' . $data->id . '" class="showBtn btn btn-sm btn-icon"><i class="fa fa-folder-open"></i></a>';
                    }
                    $button .= '&nbsp;&nbsp;';
                    if (auth()->user()->hasPermission('delete_contacts')) {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon"><i class="fa fa-trash"></i></a>';
                    } else {
                        $button .= '<a type="button" title="Delete" name="delete" id="' . $data->id . '" class="delete btn btn-sm btn-icon disabled"><i class="fa fa-trash"></i></a>';
                    }
                    return $button;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.contacts.index');
    }

    public function store(Request $request)
    {
        $rules = [
            'iso_code'      => 'required|max:3|unique:contacts',
            'phone_code'    => 'required|unique:contacts'
        ];

        $request->validate($rules);

        Contact::create($request->all());
        Toastr::success(__('admin.added_successfully'));
        return redirect()->route('admin.contacts.index');
    }

    public function show($id)
    {
        if (request()->ajax()) {
            $data   = Contact::with('customer')->findOrFail($id);
            $data->customer->name;
            return response()->json(['data' => $data]);
        }
    }

    public function destroy($id)
    {
        $contact = Contact::findOrFail($id);
        $contact->delete();
    }
}
