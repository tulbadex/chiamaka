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
        $user = User::find($id);

        $request->validate([
            'FirstName' => 'required|string|max:255',
            'LastName' => 'required|string|max:255',
            'email' => 'required|string|max:255',
            'profileImage' => 'image|mimes:jpeg, png, gif, svg, max:2048',
            'user_type' => 'string|max:255',
            'nameOfOrganization' => 'string|max:255',
            'organizationEmail' => 'string|max:255',
            'phoneNumber' => 'string|max:255'
        ]);


        $data = [];
        if($user){
            $profileImage = $request->file('profileImage');

            if($profileImage){
                $destinationPath ='/public/profile/images';
                $imageName = time(). $profileImage->getClientOriginalName();
                $profileImage->move($destinationPath, $imageName);
            }

            if($user->profile->exist()){
                $data = $user->profile->update([
                    'profileImage' => $request->$imageName,
                    'nameOfOrganization' => $request->nameOfOrganization,
                    'organizationEmail' => $request->organizationEmail,
                    'phoneNumber' => $request->phoneNumber
                ]);
            }else{
                $data = User::create([
                    'FirstName' => $request->$user->FirstName,
                    'LastName' => $request->$user->LastName,
                    'email' => $request->$user->email,
                    'user_type' => $request->user_type
                ]);

                $data = Profile::create([
                    'profileImage' => $imageName,
                    'nameOfOrganization' => $request->nameOfOrganization,
                    'organizationEmail' => $request->organizationEmail,
                    'phoneNumber' => $request->phoneNumber
                ]);
            }
        }

            /* $user->update([
                'FirstName' => $request->FirstName,
                'LastName' => $request->LastName,
                'email' => $request->email,
                'user_type' => $request->email
            ]); */

            /* $data = [
                'FirstName' => $user->FirstName,
                'LastName' => $user->LastName,
                'email' => $user->email,
                'profileImage' => $profile->profileImage,
                'user_type' => $profile->user_type,
                'nameOfOrganization' => $profile->nameOfOrganization,
                'organizationEmail' => $profile->organizationEmail,
                'phoneNumber' => $profile->phoneNumber
            ]; */

            return response()->json($data, 201);
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
