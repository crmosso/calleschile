<?php

namespace App\Http\Controllers;

use App\Models\Province;

class ProvinceController extends Controller
{
    public function getProvincesByRegionId($regionId)
    {
        $provinces = Province::where("region_id", $regionId)->get();
        return $provinces;
    }
}