<?php

namespace App\Http\Controllers;

use App\Models\addChild;
use Illuminate\Http\Request;

class addChildController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return addChild::all();
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
            'childFullName' => 'required',
            'dateOfBirth' => 'required',
            'gender' => 'required',
            'relationship' => 'required',
            'medRecord' => 'required|mimes:pdf|max:2048'
        ]);

        $input = $request->all();

        if($medRecord = $request->file('medRecord')) {

            $filePath = 'medRecords/';

            $filename = $medRecord->getClientOriginalName();

            $medRecord->move($filePath, $filename);

            $input['medRecord'] = "$filename";

        }

        addChild::create($input);

        return response()->json($input, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return addChild::find($id);
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
        $addChild = addChild::find($id);
        $addChild->update($request->all());
        return $addChild;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        addChild::destroy($id);
    }
}
