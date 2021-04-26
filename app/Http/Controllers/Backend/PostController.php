<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class PostController extends Controller
{
    public function Create(){
    	$category = DB::table('categories')->get();
    	$district = DB::table('districts')->get();

    	return view('backend.post.create', compact('category','district'));
    }
}
