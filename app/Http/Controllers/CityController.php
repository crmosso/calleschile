<?php

namespace App\Http\Controllers;

use App\Models\City;

class CityController extends Controller
{
    public function getCitiesByProvinceId($provinceId)
    {
        $cities = City::where("province_id", $provinceId)->get();
        return $cities;
    }
}