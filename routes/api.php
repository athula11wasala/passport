<?php

use Illuminate\Http\Request;

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

Route::post('auth/login', 'Auth\AccessTokenController@login');
Route::post('auth/signup', 'Auth\AccessTokenController@signup');

Route::group(["middleware" =>[ "auth:api"],'prefix' => 'auth'], function () {

    Route::get('logout', 'Auth\AccessTokenController@logout');
    Route::any('user', 'Auth\AccessTokenController@user');

    Route::group(["prefix" => "permissions"], function () {

        Route::post("add-permission-role", "RoleUserController@addPermissionToRole");
        Route::get("role-permission", "RoleUserController@getUserRoleAndPermissions");
        Route::get("user-has-role/{role}", "RoleUserController@hasRole");
        Route::get("user-has-permission/{permission}", "RoleUserController@hasPermission");

        Route::group(['middleware' => ['role:ADMINISTRATOR']], function () {
           Route::middleware('permission:ADMINTOOLS')->post("add-permission",
                              "RoleUserController@addPermissions");

       });

    });

});

