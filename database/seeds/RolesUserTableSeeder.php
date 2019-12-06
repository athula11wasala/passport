<?php

use Illuminate\Database\Seeder;
use App\Services\RoleUserService;
use Illuminate\Support\Facades\DB;
use App\Models\RoleUser;
use App\User;

class RolesUserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */

    private $role_user;

    public function __construct(RoleUserService $roleUserService)
    {
        $this->role_user = $roleUserService;
    }


    public function getAllUsers()
    {

        return DB::table ( "users" )->select ( "id", "email")->get ();
    }


    public function assignRoleUser($userId, $role)
    {

        $user = User::find ( $userId );
        $role = $this->role_user->getRoleByName ( $role );
        $user->attachRole ( $role );
    }


    public function run()
    {

        DB::table ( "role_user" )->delete ();
        $allUsers = $this->getAllUsers ();
        foreach ( $allUsers as $users ) {
            $this->assignRoleUser($users->id, 'ADMINISTRATOR');
        }



    }
}
