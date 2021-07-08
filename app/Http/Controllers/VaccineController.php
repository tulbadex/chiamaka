<?php

namespace App\Http\Controllers;

use App\Models\Vaccine;
use Illuminate\Http\Request;

class VaccineController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $vaccine = Vaccine::all();
        $res = [
            "message" => "success",
            "data" => $vaccine
        ];

        return response()->json($res);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'vaccineName' => 'required|string',
            'childAge' => 'required|string',
            'details' => 'required|string',
            'cost' => 'required|string',
        ]);

        $vaccine = Vaccine::create($request->all());

        $res = [
            "message" => "success",
            "data" => $vaccine
        ];

        return response()->json($res, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $vaccine =  Vaccine::find($id);

        if ($vaccine == null) {
            $res = [
                "message" => $id . " does not exist",
            ];

            return response()->json($res, 404);
        };

        $res = [
            "message" => "success",
            "data" => $vaccine
        ];

        return response()->json($res, 200);
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
        $vaccine = Vaccine::find($id);

        if ($vaccine == null) {
            $res = [
                "message" => $id . " does not exist",
            ];

            return response()->json($res, 404);
        };

        $vaccine->update($request->all());

        $res = [
            "message" => "success",
            "data" => $vaccine
        ];

        return response()->json($res, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $vaccine = Vaccine::destroy($id);

        if ($vaccine == null) {
            $res = [
                "message" => $id . " does not exist",
            ];

            return response()->json($res, 404);
        };

        $res = [
            "message" => "deleted"
        ];

        return response()->json($res, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  str  $name
     * @return \Illuminate\Http\Response
     */
    public function searchByName($name)
    {
        $vaccine = Vaccine::where('vaccineName', 'like', '%' . $name . '%')->get();

        if (count($vaccine) == 0) {
            $res = [
                "message" => $name . " not found",
            ];

            return response()->json($res, 404);
        };

        $res = [
            "message" => "success",
            "data" => $vaccine
        ];

        return response()->json($res, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  str  $age
     * @return \Illuminate\Http\Response
     */
    public function searchByAge($age)
    {
        $vaccine = Vaccine::where('childAge', $age)->get();

        if (count($vaccine) == 0) {
            $res = [
                "message" => $age . " not found",
            ];

            return response()->json($res, 404);
        };

        $res = [
            "message" => "success",
            "data" => $vaccine
        ];

        return response()->json($res, 200);
    }
}
