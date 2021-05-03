<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Image;

class GalleryController extends Controller
{
    public function PhotoGallery(){

    	$photo = DB::table('photos')->orderBy('id', 'desc')->paginate(5);
    	return view('backend.gallery.photos', compact('photo'));

    }

    public function AddGallery(){

    	return view('backend.gallery.create');

    }

    public function StorePhoto(Request $request){

    	$validated = $request->validate([

        'title' => 'required',
        'photo' => 'required',

    ]);

    	$data = array(); // This is Query Builder
    	$data['title'] = $request->title;
    	$data['type'] = $request->type;


    	$image = $request->photo;
    		if ($image) {
   		$image_one = uniqid() . '.' . $image->getClientOriginalExtension(); 
    		/*$image_one = 123123123.jpg or 123123123.png*/ 
    		Image::make($image)->resize(500,300)->save('image/photogallery/' . $image_one);

    	$data['photo'] = 'image/photogallery/' . $image_one;
    		 // image/photogallery/343434343.png

    	DB::table('photos')->insert($data);

    	$notification = array(

    		'message' => 'Photo Inserted Successfully',
    		'alert-type' => 'success'
    	);

	    	return redirect()->route('photo.gallery')->with($notification);
	    } else {
	    	return redirect()->back();
	    } // End Condition

    } // End Method

    public function EditPhoto($id){

	  	$photo = DB::table('photos')->where('id', $id)->first();

	  	return view('backend.gallery.edit', compact('photo'));

  	}

  	public function UpdatePhoto(Request $request, $id){

  		$validated = $request->validate([

        'title' => 'required',
        'photo' => 'required',

    	]);

    	$data = array(); // This is Query Builder
    	$data['title'] = $request->title;
    	$data['type'] = $request->type;

    	$oldimage = $request->oldimage;

    	$image = $request->photo;
    		if ($image) {
   		$image_one = uniqid() . '.' . $image->getClientOriginalExtension(); 
    		/*$image_one = 123123123.jpg or 123123123.png*/ 
    		Image::make($image)->resize(500,300)->save('image/photogallery/' . $image_one);

    	$data['photo'] = 'image/photogallery/' . $image_one;
    		 // image/photogallery/343434343.png

    	DB::table('photos')->where('id', $id)->update($data);
    	unlink($oldimage);

    	$notification = array(

    		'message' => 'Gallery Image Updated Successfully',
    		'alert-type' => 'success'
    	);

    	return redirect()->route('photo.gallery')->with($notification);

	    } else {
		
	    	$data['photo'] = $oldimage;
	    	DB::table('photos')->where('id', $id)->update($data);

	    	$notification = array(

	    		'message' => 'Gallery Image Updated Successfully',
	    		'alert-type' => 'success'
	    	);

	    	return redirect()->route('photo.gallery')->with($notification);

	    }


  	}

  	public function DeletePhoto($id){

	  	$photo = DB::table('photos')->where('id', $id)->first();
	  	unlink($photo->photo);

	  	DB::table('photos')->where('id', $id)->delete();

	  	$notification = array(

	    		'message' => 'Photo Deleted Successfully',
	    		'alert-type' => 'error'
	    	);

	    return redirect()->route('photo.gallery')->with($notification);
  }


}
