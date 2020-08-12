<?php

use App\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        $user = User::create([
            'name'          => 'super',
            'username'      => 'super_admin',
            'email'         => 'super@admin.com',
            'password'      => bcrypt('123123'),
            'created_at'    => date('Y-m-d'),
            'updated_at'    => date('Y-m-d')
        ]);

        $user->attachRole('super_admin');
    }
}
