<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use App\Models\User;
use Illuminate\Http\Request;

class BookingController extends Controller
{


    //Book Appointment (bookApt) controller
    public function bookApt(Request $request)
    {
        $validated = $request->validate([
            'username' => 'required|string|min:4',
            'childName' => 'required|string|min:4',
            'childAge' => 'required|numeric',
            'childName' => 'required|string|min:4',
            'vaccineName' => 'required|string|min:4',
            'hospitalName' => 'required|string|min:4',
            'scheduleTime' => 'required|date',
        ]);
        $username = $request->input('username');
        $childName = $request->input('childName');
        $childAge = $request->input('childAge');
        $vaccineName = $request->input('vaccineName');
        $hospitalname = $request->input('hospitalName');
        $scheduleTime = $request->input('scheduleTime');

        Booking::insert([
            'username' => $username,
            'childName' => $childName,
            'childAge' => $childAge,
            'vaccineName' => $vaccineName,
            'hospitalname' => $hospitalname,
            'scheduleTime' => $scheduleTime
        ]);

        $data = [
            'status' => 'success',
            'create' => [
                'method' => 'POST',
                'href' => 'book/appointment',
                'param' => 'username, childName, childAge, vaccineName, hospitalname, scheduleTime'
            ],
        ];
        $response = [
            'message' => 'Appointment booked succesfully',
            'status code' => '201',
            'data' => $data,

        ];
        return response()->json($response, 201);
    }
    // ------Get all Bookings
    public function getAllBookings()
    {

        $booking = Booking::all();

        $data = [
            'status' => 'success',
            'create' => [
                'method' => 'GET',
                'href' => 'book/appointment/all',
            ],
            'articles' => $booking,

        ];

        return response()->json($data, 200);
    }
    public function getBookingByID($id = null)
    {
        $booking = Booking::find($id);

        if ($booking != null) {
            $data = [
                'status' => 'success',
                'create' => [
                    'method' => 'GET',
                    'href' => '/book/appointment/' . $id,
                ],
                'booking' => $booking,


            ];
            return response()->json($data, 200);
        } else {
            $data = [
                'message' => $id . ' not found',
                'status' => 'failed',
                'status code' => '404'
            ];
            return response()->json($data, 404);
        }
    }
}
