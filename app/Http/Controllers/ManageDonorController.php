<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Donor;
use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Contracts\Permission;
use Spatie\Permission\Contracts\Role;

class ManageDonorController extends Controller
{
    //

    public function donor_reg()
    {
        return view("donor_registration_form");
    
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required|numeric|unique:users,phone',
            'dob' => 'required',
            'occupation' => 'required',
            'company' => 'required',
            'country' => 'required',
            'gender' => 'required',
            'address' => 'required',
            'password' => 'required',
        ]);

        $input = $request->all();
        $user = User::create($input);


        $donor = new Donor;
        $donor->name=$request->name;
        $donor->email=$request->email;
        $donor->phone=$request->phone;
        $donor->dob=$request->dob;
        $donor->occupation=$request->occupation;
        $donor->company=$request->company;
        $donor->country=$request->country;
        $donor->gender=$request->gender;
        $donor->address=$request->address;
        $donor->password=$request->password;
        $donor->save();

        // $role = Role::findOrCreate('Donor');
        // $input += ['user_id' => $user->id];

        // $mentor = Donor::create($input);

        // $permission = Permission::findOrCreate('mentor-can');
        // $role->givePermissionTo($permission);
        // $user->assignRole($role);

        return redirect()->route('manage_donor_registration')
            ->with('success', 'Registration successfully done');
    }

}
