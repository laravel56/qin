<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ZebraController extends Controller
{
   
   	public function list(Request $request)
   	{
   		var_dump($request->all());
   	}
}
