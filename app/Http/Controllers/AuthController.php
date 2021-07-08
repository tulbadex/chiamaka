<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{
    //sign Up
    public function register(Request $request)
    {
        $fields = $request->validate([
            'FirstName' => 'required|string|max:255',
            'LastName' => 'required|string|max:255',
            'email' => 'required|max:255|unique:users',
            'password' => 'required|min:8|confirmed'
        ]);

        $user = User::create([
            'FirstName' => $fields['FirstName'],
            'LastName' => $fields['LastName'],
            'email' => $fields['email'],
            'password' => Hash::make($fields['password']),
            'user_type' => 'parent'
        ]);

        //generate auth token
        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => [
                "FirstName" => $user->FirstName,
                "LastName" => $user->LastName,
                "email" => $user->email,
                "user_type" => "parent",
                "id" => $user->id
            ],
            'token' => $token
        ];

        return response()->json($response, 201);
    }


    // sign in
    public function login(Request $request)
    {
        $fields = $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);

        // check the user'email from the database
        $user = User::where('email', $fields['email'])->first();

        //if there no such registered user or the entered password did not match with the user's password
        if (!$user && !Hash::check($fields['password'], $user->password)) {
            return response([
                'message' => 'There is no such user'
            ], 401);
        }

        //generate auth token
        $token = $user->createToken('myapptoken')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];

        return response()->json($response, 201);
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
