<?php

use App\Http\Controllers\CityController;
use App\Http\Controllers\ProvinceController;
use App\Http\Controllers\RegionController;
use App\Http\Controllers\StreetController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */

Route::get('/regions', [RegionController::class, 'index']);

Route::get('/provinces/regions/{id}', [ProvinceController::class, 'getProvincesByRegionId']);

Route::get('cities/provinces/{id}', [CityController::class, 'getCitiesByProvinceId']);

Route::get('streets/cities/{id}', [StreetController::class, 'getStreetsByCityId']);