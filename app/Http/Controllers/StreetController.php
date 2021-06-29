<?php

namespace App\Http\Controllers;

use App\Models\Street;

class StreetController extends Controller
{
    public function getStreetsByCityId($cityId)
    {
        $cities = Street::where("city_id", $cityId)->get();
        return $cities;
    }
}