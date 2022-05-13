<?php

namespace App\Http\Controllers;
use App\Models\Scholarship;
use App\Models\Contact;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $scholarships = Scholarship::where('status', "ACTIVE")->where('is_delete', 0)->orderBy('id', 'DESC')->paginate(100);

        return view('home', [
            'scholarships' => $scholarships,
        ]);
    }

    public function contact_us(Request $request)
    {

        // $this->validate($request, [
        //     'fname' => 'required',
        //     'lname' => 'required',
        //     'email' => 'required',
        //     'phone' => 'required',
        //     'message' => 'required',
        // ]);

        $data = new Contact;
        $data->fname=$request->fname;
        $data->lname=$request->lname;
        $data->email=$request->email;
        $data->phone=$request->phone;
        $data->message=$request->message;
        $data->save();

        // return redirect("contact_us");
        return redirect()->route('contact_us')->with('success', 'Account created successfully and all the process completed. We will contact with you soon.');

    }
}
