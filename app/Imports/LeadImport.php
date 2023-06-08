<?php

namespace App\Imports;

use App\Models\User;
use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;


class LeadImport implements ToCollection,  WithHeadingRow
{
    /**
    * @param Collection $row
    */
    public function collection(Collection $rows)
    {
        foreach ($rows as $row)
        {
            // dd($row);
            // $username = strlen($row['username']) > 2 ? $this->clean($row['username']) : $this->clean($row['email']);
            $exist = User::select('email','phone')->where('email',$this->clean($row['email']))->orWhere('phone',$this->clean($row['phone']))->first();
            // $exist = User::select('email','phone','username')->where('email',$this->clean($row['email']))->orWhere('phone',$this->clean($row['phone']))->orWhere('username', $username)->first();
            if(isset($row['phone']) && isset($row['email']) && !$exist){
               $user = User::create([
                    'country'    =>  $this->clean($row['country']),
                    'address'    =>  $this->clean($row['address']),
                    'email'    =>  $this->clean($row['email']),
                    
                    'first_name'    =>  $this->clean($row['first_name']),
                    'last_name'    =>  $this->clean($row['last_name']),
                    'phone'    =>  $this->clean($row['phone']),
                    'source'    =>  isset($row['source']) ? $this->clean($row['source']) :  1,
                    'is_active' => true,
                    'can_trade' => 1,
                    'password' => bcrypt('password'),
                ]);

                $user->attachRole('lead');
            }

        }
    }

    public function clean($item){
        return str_replace('"','',$item);
    }
}
