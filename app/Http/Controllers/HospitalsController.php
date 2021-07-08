<?php

namespace App\Http\Controllers;


use App\Models\Lgas;
use App\Models\States;


use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HospitalsController extends Controller
{
    //get all the lgas
    public function lgas()
    {


        $lgas = Lgas::all();

        return response()->json($lgas, 201);
    }

    //get all the states
    public function states()
    {


        $lgas = States::all();

        return response()->json($lgas, 201);
    }
}
