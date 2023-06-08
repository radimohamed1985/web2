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
        $sourcename =DB::table('sources')->where('id','=',$this->source)->first();
    
        return [
           
            'id'=>$this->id,
            'first_name'=>$this->first_name,
            'email'=>$this->email,
            'phone'=>$this->phone,
            'created_at'=>$this->created_at,
            'status'=>new statusname($statname),
            'status_id'=>$this->status,
            'balance'=>$this->balance,
            'source'=>new sources($sourcename)
            
        ];
    }
}
