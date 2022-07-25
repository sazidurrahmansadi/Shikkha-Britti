<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Grantor;
use Illuminate\Http\Request;

class ManageGrantorsController extends Controller
{
    //


    public function index()
    {
        $grantors = Grantor::all();

        // dd($mentors->user->name);

        return view('admin.manage_grantors.manage_grantors_index', [
            'grantors' => $grantors,
        ]);
    }

    public function create()
    {
        return view('admin.manage_grantors.manage_grantors_create');

    }

}
