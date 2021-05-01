<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class SettingController extends Controller
{
    public function SocialSetting(){

    	$social = DB::table('socials')->first();
    	return view('backend.setting.social', compact('social'));
    }

    public function UpdateSocials(Request $request, $id){

    	$data = array(); // This is Query Builder
    	$data['facebook'] = $request->facebook;
    	$data['twitter'] = $request->twitter;
    	$data['youtube'] = $request->youtube;
    	$data['linkedin'] = $request->linkedin;
    	$data['instagram'] = $request->instagram;

    	DB::table('socials')->where('id', $id)->update($data);

    	$notification = array(

    		'message' => 'Social Settings Updated Successfully',
    		'alert-type' => 'success'
    	);

    	return redirect()->route('social.setting')->with($notification);

    }
}
