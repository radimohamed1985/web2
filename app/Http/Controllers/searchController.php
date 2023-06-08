<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\RoleUser;
use App\Models\User;
use Illuminate\Http\Request;

class searchController extends Controller
{
            public function customersearch(Request $request){

              $r=  RoleUser::with('user')->where('role_id',3)->get();
                $res = [];
              foreach($r as $rr){
                $user =User::find($rr->user_id);
             if($user != null){
                $res [] =$user->first_name;
             }
       
              }

              dd($res);

            
            }
}
