<?php

use App\Models\Setting;



if (!function_exists('amt')) {
    function amt($value){
        return optional(auth()->user()->currency)->sign.''.number_format($value,2);
    }
}


if (!function_exists('convertFloat')) {
    function convertFloat($floatAsString)
    {
        $norm = strval(floatval($floatAsString));

        if (($e = strrchr($norm, 'E')) === false) {
            return $norm;
        }

        return number_format($norm, -intval(substr($e, 1)));
    }
}


