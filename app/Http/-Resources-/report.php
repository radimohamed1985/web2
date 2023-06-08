<?php

namespace App\Http\Resources;
use App\Http\Models\status;

use Illuminate\Http\Resources\Json\JsonResource;

class report extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'first_name'=>$this->first_name,
            'email'=>$this->email,
            'phone'=>$this->phone,
            'status'=>$this->status
        ];
    }
}
