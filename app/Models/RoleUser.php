<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoleUser extends Model
{
    use HasFactory;
    protected $table ='role_user';
    protected $guarded = [];

    public function User(){
        return $this->hasMany(User::class,'id','user_id');
    }
}
