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
            'password'      => bcrypt('password'),
            'created_at'    => date('Y-m-d'),
            'updated_at'    => date('Y-m-d')
        ]);

        $user->attachRole('super_admin');

        $user = User::create([
            'name'          => 'admin',
            'username'      => 'admin',
            'email'         => 'admin@admin.com',
            'password'      => bcrypt('password'),
            'created_at'    => date('Y-m-d'),
            'updated_at'    => date('Y-m-d')
        ]);

        $user->attachRole('admin');
    }
}
