<?php

namespace App\Http\Controllers\Tenant;

use App\Http\Controllers\Controller;
use App\Models\Donor;
use App\Models\User;
use Illuminate\Http\Request;

class ManageDonorController extends Controller
{
    //

    public function index()
    {
        $donors = Donor::all();

        // dd($donors->user->name);

        return view('tenant.manage_donors.manage_donors_index', [
            'donors' => $donors,
        ]);
    }

    public function create()
    {
        return view('tenant.manage_donors.manage_donors_create');

    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'phone' => 'required|numeric|unique:users,phone',
            'email' => 'required',
            'country' => 'required',
            'address' => 'required',
            'profession' => 'required',
            'password' => 'required',
        ]);

        $input = $request->all();
        $user = User::create($input);
        // $role = Rol::findOrCreate('MENTOR');
        $input += ['user_id' => $user->id];

        $donor = Donor::create($input);

        // $permission = Permission::findOrCreate('mentor-can');
        // $role->givePermissionTo($permission);
        // $user->assignRole($role);

        // return redirect()->route('manage_mentors.index')->with('success','Mentor created successfully');
        return redirect()->route('manage_donors_create',$donor->id)->with('success','Donor created successfully');
    }
}
