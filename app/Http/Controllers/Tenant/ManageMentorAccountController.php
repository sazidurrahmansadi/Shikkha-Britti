<?php

namespace App\Http\Controllers\Tenant;

use App\Http\Controllers\Controller;
use App\Models\Account;
use App\Models\Mentor;
use Illuminate\Http\Request;

class ManageMentorAccountController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($mentor_id)
    {
        $account_types = Account::account_types;
        return view('tenant.manage_mentors.manage_mentor_accounts_create',[
            'account_types' => $account_types,
            'mentor_id' => $mentor_id,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'account_title' => 'required',
            'account_type' => 'required',
            'account_number' => 'required',
            'mentor_id' => 'required',
        ]);

        $mentor = Mentor::find($request->mentor_id);
        
        $account = new Account();
        $account->account_title = $request->account_title;
        $account->account_type = $request->account_type;
        $account->account_number = $request->account_number;
        $mentor->mentor_accounts()->save($account);

        return redirect()->route('manage_mentors.index')->with('success', 'Account created succesfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
