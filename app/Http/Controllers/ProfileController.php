<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Profile;
use App\Models\User;
use App\Http\Controllers\AuthController;

class ProfileController extends Controller
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
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function updateprofile(Request $request, $id)
    {
        // $user = Auth::user()->has('profile')->with('profile')->first();

        // $email = Auth::User()->email;
        $user = User::findorFail($id);

        $fields = $request->validate([
            'FirstName' => 'required|string|max:255',
            'LastName' => 'required|string|max:255',
            'email' => 'required|string|max:255',
            'profileImage' => 'image|mimes:jpeg,png,gif,svg|max:2048',
            'user_type' => 'string|max:255',
            'nameOfOrganization' => 'string|max:255',
            'organizationEmail' => 'string|max:255',
            'phoneNumber' => 'string|max:255'
        ]);
        // C:/Users/Tulbadex/Downloads/Firefox_Screenshot_2021-06-13T05-51-27.084Z.png

        $profileImage = $request->hasFile('profileImage');

        if($profileImage){
            $image = $request->file('profileImage');
            $imageName = time(). $image->getClientOriginalName();
            $location = public_path('profile/images/');
            $request->profileImage->move($location, $imageName);

        }else{
            $imageName = "";
        }

        /* $updateUser = $user->update([
            "FirstName" => $fields['FirstName'],
            "LastName" => $fields['LastName'],
            "email" => $fields['email'],
            "user_type" => "parent"
        ]); */

        $user->update([
            "FirstName" => $request->FirstName,
            "LastName" => $request->LastName,
            "email" => $request->email,
            "user_type" => $request->user_type
        ]);

        if($user->profiles()->exists()){
            $user->profiles()->update([
                'profileImage' => $imageName,
                'nameOfOrganization' => $request->nameOfOrganization,
                'organizationEmail' => $request->organizationEmail,
                'phoneNumber' => $request->phoneNumber
            ]);
        }else{
            $user->profiles()->create([
                'profileImage' => $imageName,
                'nameOfOrganization' => $request->nameOfOrganization,
                'organizationEmail' => $request->organizationEmail,
                'phoneNumber' => $request->phoneNumber
            ]);
        }


        $response = [
            'user' => [
                'FirstName' =>$request->FirstName,
                'LastName' => $request->LastName,
                'email' => $request->email,
                'user_type' => $request->user_type,
                'nameOfOrganization' => $request->nameOfOrganization,
                'organizationEmail' => $request->organizationEmail,
                'phoneNumber' => $request->phoneNumber,
                'profileImage' => $imageName,
            ]
        ];

            return response()->json($response, 201);
        // else{
        //     return response()->json($data, 401);
        // }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    // public function destroy($id)
        //

}
