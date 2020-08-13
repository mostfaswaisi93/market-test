<?php

namespace App\Http\Controllers\Admin;

use App\Models\Customer;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    public function index(Request $request)
    {
        $customers = Customer::when($request->search, function ($q) use ($request) {

            return $q->where('name', 'like', '%' . $request->search . '%')
                ->orWhere('phone', 'like', '%' . $request->search . '%')
                ->orWhere('address', 'like', '%' . $request->search . '%');
        })->latest()->paginate(5);

        return view('admin.customers.index', compact('customers'));
    }

    public function create()
    {
        return view('admin.customers.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required|array|min:1',
            'phone.0' => 'required',
            'address' => 'required',
        ]);

        $request_data = $request->all();
        $request_data['phone'] = array_filter($request->phone);

        Customer::create($request_data);

        session()->flash('success', __('site.added_successfully'));
        return redirect()->route('admin.customers.index');
    }

    public function edit(Customer $customer)
    {
        return view('admin.customers.edit', compact('customer'));
    }

    public function update(Request $request, Customer $customer)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required|array|min:1',
            'phone.0' => 'required',
            'address' => 'required',
        ]);

        $request_data = $request->all();
        $request_data['phone'] = array_filter($request->phone);

        $customer->update($request_data);
        session()->flash('success', __('site.updated_successfully'));
        return redirect()->route('admin.customers.index');
    }

    public function destroy(Customer $customer)
    {
        $customer->delete();
        session()->flash('success', __('site.deleted_successfully'));
        return redirect()->route('admin.customers.index');
    }
}
