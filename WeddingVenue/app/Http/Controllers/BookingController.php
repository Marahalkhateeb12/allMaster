<?php

namespace App\Http\Controllers;

use App\Models\Booking;
use App\Models\Date;
use App\Models\Hall;
use App\Models\Reservation;
use App\Models\Sub_Hall;
use App\Models\User;
use Illuminate\Http\Request;

class BookingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $booking= Sub_Hall::Join('reservations' ,'reservations.sub_hall_id','=','sub__halls.id')
        ->Join('users','reservations.user_id' ,'=','users.id')
        ->get(['reservations.id' ,'users.name', 'sub__halls.subhall_name','users.user_mobile','reservations.date','reservations.Time']);

        return view('Admin.booking',compact('booking'))
        ->with(request()->input('page'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
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
        $halls=Hall::latest()->paginate(10);
            $request->validate([
                'date' => 'required',
                'time' => 'required',
    
    
            ]);
            $newBook = new Reservation();
            $newBook->user_id = 17;
            $newBook->sub_hall_id = 9;
            $newBook->Time=$request->time;
    
            $newBook->save();
 

            // Date::where('date', $request->date)->where('time', $request->time)->update([
            //     'status' => 1,
    
            // ]);


     return view('WeddingVenue.confirmation',compact('halls'))
        ->with(request()->input('page'));
            
        
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Booking  $booking
     * @return \Illuminate\Http\Response
     */
    public function show(Reservation $booking)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Booking  $booking
     * @return \Illuminate\Http\Response
     */
    public function edit(Reservation $booking)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Booking  $booking
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Reservation $booking)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Booking  $booking
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $delete = Reservation::find($id);
        $delete->delete();
        return redirect()->route('booking.index')
                        ->with('success','Book deleted successfully');
    }
}
