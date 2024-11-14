<?php

namespace App\Http\Controllers;

//import Model "Employee
use App\Models\Employee;

use Illuminate\Http\Request;

//return type View
use Illuminate\View\View;

use Illuminate\Http\RedirectResponse;

//import Facade "Storage"
use Illuminate\Support\Facades\Storage;

class EmployeesController extends Controller
{
    /**
     * index
     *
     * @return View
     */
    public function index(): View
    {
        //get employees
        $employees = Employee::latest()->paginate(5);

        //render view with employees
        return view('employee.index', compact('employees'));
    }

    /**
     * create
     *
     * @return View
     */
    public function create(): View
    {
        return view('employee.create');
    }

    /**
     * store
     *
     * @param  mixed $request
     * @return RedirectResponse
     */
    public function store(Request $request): RedirectResponse
    {
        //validate form
        $this->validate($request, [
            'name'     => 'required|min:5',
            'email'     => 'required|min:5|ends_with:@gmail.com',
            'address'     => 'required|min:5',
            'phone'     => 'required|min:5|numeric',
            'user_picture'     => 'required|image|mimes:jpeg,jpg,png|max:2048',
            'password'   => 'required|min:5'
        ]);

        //upload image
        $image = $request->file('user_picture');
        $image->storeAs('public/employees', $image->hashName());

        //create employee
        Employee::create([
            'name'     => $request->name,
            'email'     => $request->email,
            'address'     => $request->address,
            'phone'     => $request->phone,
            'user_picture'     => $image->hashName(),
            'password'   => $request->password
        ]);

        //redirect to index
        return redirect()->route('employees.index')->with(['success' => 'Data Berhasil Disimpan!']);
    }

    /**
     * show
     *
     * @param  mixed $id
     * @return View
     */
    public function show(string $id): View
    {
        //get employee by ID
        $employees = Employee::findOrFail($id);

        //render view with employee
        return view('employee.show', compact('employees'));
    }

    /**
     * edit
     *
     * @param  mixed $id
     * @return View
     */
    public function edit(string $id): View
    {
        //get employee by ID
        $employee = Employee::findOrFail($id);

        //render view with employee
        return view('employee.edit', compact('employee'));
    }

    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $id
     * @return RedirectResponse
     */
    public function update(Request $request, $id): RedirectResponse
    {
        //validate form
        $this->validate($request, [
            'name'     => 'required|min:5',
            'email'     => 'required|min:5|ends_with:@gmail.com',
            'address'     => 'required|min:5',
            'phone'     => 'required|min:5|numeric',
            'user_picture'     => 'nullable|image|mimes:jpeg,jpg,png|max:2048',
            'password'   => 'required|min:5'
        ]);

        //get employee by ID
        $employee = Employee::findOrFail($id);

        //check if image is uploaded
        if ($request->hasFile('user_picture')) {
            //upload new image
            $image = $request->file('user_picture');
            $image->storeAs('storage/employees', $image->hashName());

            //delete old image
            Storage::delete('storage/employees/' . $employee->user_picture);

            //update employee with new image
            $employee->update([
                'name'     => $request->name,
                'email'     => $request->email,
                'address'     => $request->address,
                'phone'     => $request->phone,
                'user_picture'     => $image->hashName(),
                'password'   => $request->password
            ]);
        } else {
            //update employee without image
            $employee->update([
                'name'     => $request->name,
                'email'     => $request->email,
                'address'     => $request->address,
                'phone'     => $request->phone,
                'password'   => $request->password
            ]);
        }

        //redirect to index
        return redirect()->route('employees.index')->with(['success' => 'Data Berhasil Disimpan!']);
    }

    /**
     * destroy
     *
     * @param  mixed $post
     * @return void
     */
    public function destroy($id): RedirectResponse
    {
        //get post by ID
        $employee = Employee::findOrFail($id);

        //delete image
        Storage::delete('storage/employees/' . $employee->user_picture);

        //delete post
        $employee->delete();

        //redirect to index
        return redirect()->route('employees.index')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
