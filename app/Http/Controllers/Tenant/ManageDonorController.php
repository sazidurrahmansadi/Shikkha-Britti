<?php

namespace App\Http\Controllers\Tenant;

use App\Http\Controllers\Controller;
use App\Models\ApprovedApplication;
use App\Models\Donor;
use App\Models\ReviewedApplication;
use App\Models\Scholarship;
use App\Models\Tenant;
use App\Models\User;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Role as ModelsRole;

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


    public function tenant_list()
    {
        $tenants = Tenant::all();

        // dd($tenants->user->name);

        return view('tenant.manage_donors.tenant_list', [
            'tenants' => $tenants,
        ]);
    }

    public function scholarship_list()
    {
        $scholarships = Scholarship::all();

        // dd($scholarships->user->name);

        return view('tenant.manage_donors.scholarship_list', [
            'scholarships' => $scholarships,
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
        $role = Role::findOrCreate('Donor');
        $input += ['user_id' => $user->id];

        $donor = Donor::create($input);

        $permission = Permission::findOrCreate('student-profile-show');
        $role->givePermissionTo($permission);
        $user->assignRole($role);

        // return redirect()->route('manage_mentors.index')->with('success','Mentor created successfully');
        return redirect()->route('manage_donors_create',$donor->id)->with('success','Donor created successfully');
    }


    public function donor_reg_form()
    {
        return view('tenant.manage_donors.donor_registration_form');

    }


    public function donor_store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'phone' => 'required|numeric|unique:users,phone',
            'occupation' => 'required',
            'email' => 'required',
            'gender' => 'required',
            'country' => 'required',
            'address' => 'required',
            'password' => 'required',
        ]);

        $input = $request->all();
        $user = User::create($input);
        $role = Role::findOrCreate('DONOR');
        $input += ['user_id' => $user->id];

        $donor = Donor::create($input);

        $permission = Permission::findOrCreate('student-profile-show');
        $role->givePermissionTo($permission);
        $user->assignRole($role);

        // return redirect()->route('manage_mentors.index')->with('success','Mentor created successfully');
        return redirect()->route('login',$donor->id)->with('success','Successfully registered.');
    }

    public function student_list(Request $tenant_id)
    {

        // $tenant_id = $request->tenant_id
        // $query = DB::table('approved_applications')->select()
        //     ->where('mentor_id', '=', $mentor_id)
        //     ->get();

        $students = ReviewedApplication::where('tenant_id', '=',  $tenant_id)->get();

        
        // dd($query);
        return view('tenant.manage_donors.student_list', compact('students'));
    }
}
