<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class statusname extends JsonResource
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
            'status'=>$this->name
        ];
    }
}
