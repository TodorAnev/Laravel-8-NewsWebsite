<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Image;

class AdsController extends Controller
{

    public function __construct(){
        $this->middleware('auth'); //return user to the login page
    }

    public function ListAds(){

    	$ads = DB::table('ads')->orderBy('id', 'desc')->get();

    	return view('backend.ads.listads', compact('ads'));

    }

    public function AddAds(){
    	return view('backend.ads.add_ads');
    }

    public function StoreAd(Request $request){

    	$data = array(); // This is Query Builder
    	$data['link'] = $request->link;

      if ($request->type == 2) {
        	$image = $request->ads;

   		$image_one = uniqid() . '.' . $image->getClientOriginalExtension(); 
    		Image::make($image)->resize(970,90)->save('image/ads/' . $image_one);

    	$data['ads'] = 'image/ads/' . $image_one;
    	$data['type'] = 2;

    	DB::table('ads')->insert($data);

    	$notification = array(

    		'message' => 'Horizontal Ad Inserted Successfully',
    		'alert-type' => 'success'
    	);

	    	return redirect()->route('list.ad')->with($notification);
	    
      } else {

        	$image = $request->ads;
   		$image_one = uniqid() . '.' . $image->getClientOriginalExtension(); 
    		Image::make($image)->resize(500,500)->save('image/ads/' . $image_one);

    	$data['ads'] = 'image/ads/' . $image_one;
    	$data['type'] = 1;

    	DB::table('ads')->insert($data);

    	$notification = array(

    		'message' => 'Vertical Ad Inserted Successfully',
    		'alert-type' => 'info'
    	);

	    	return redirect()->route('list.ad')->with($notification);
	    
      }

    } // End Method

}
