<?php

namespace App\Http\Controllers\Tenant;

use App\Http\Controllers\Controller;
use App\Models\Stuff1;
use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class ManageStuffController extends Controller
{
    //

    public function index()
    {
        return view('tenant.manage_stuffs.manage_stuff_for_scholarship_create');

    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'phone' => 'required|numeric|unique:users,phone',
            'email' => 'required',
            'country' => 'required',
            'address' => 'required',
            // 'profession' => 'required',
            'password' => 'required',
        ]);

        $input = $request->all();
        $user = User::create($input);
        // Stuff1=Scholarship management stuff
        $role = Role::findOrCreate('Stuff1'); 
        $input += ['user_id' => $user->id];

        $stuff1 = Stuff1::create($input);

        $permission = Permission::findOrCreate('student-profile-show');
        $role->givePermissionTo($permission);
        $user->assignRole($role);

        return redirect()->route('manage_stuff1_store',$stuff1->id)->with('success','Stuff created successfully');
    }
}
