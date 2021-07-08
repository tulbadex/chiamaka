<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{

    // sign in
    public function login(Request $request)
    {
        $fields = $request->validate([
            'email' => 'required|email:rfc',
            'password' => 'required'
        ]);

        // check the user'email from the database
        $user = Admin::where('email', $fields['email'])->first();

        //if there no such registered user or the entered password did not match with the user's password
        if (!$user || !Hash::check($fields['password'], $user->password)) {
            return response([
                'message' => 'There is no such user test'
            ], 401);
        }

        //generate auth token
        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => [
                'email' => $user->email,
                'user_type' => $user->user_type,
                'id' => $user->id,
            ],
            'token' => $token
        ];

        return response()->json($response, 201);
    }

    //update admin
    public function update(Request $request, $id)
    {
        $user = Admin::find($id);
        if ($user) {
            $fields = $request->validate([
                'email' => 'required|email:rfc',
                'password' => 'required|min:8'
            ]);

            auth()->user()->update([
                'email' => $fields['email'],
                'password' => Hash::make($fields['password']),
            ]);

            $response = [
                'user' => [
                    'email' => $fields['email'],
                    'user_type' => $user->user_type,
                    'id' => $user->id,
                ],
            ];
            return response()->json($response, 201);
        }
    }

    // logout
    public function logout()
    {
        auth()->user()->tokens()->delete();

        return [
            'message' => 'LoggedOut'
        ];
    }
}
