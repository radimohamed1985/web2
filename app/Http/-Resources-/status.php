<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\DB;


class status extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)


    {

        $statname = DB::table('statuses')->where('id','=',$this->status)->first();
    
        return [
            'first_name'=>$this->first_name,
            'email'=>$this->email,
            'phone'=>$this->phone,
            'status'=>new statusname($statname),
            'balance'=>$this->balance
          
        ];
    }
}
