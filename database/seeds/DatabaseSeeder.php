<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(LaratrustSeeder::class);
        $this->call(UsersTableSeeder::class);
        $this->call(CategoriesTableSeeder::class);
        $this->call(CountriesTableSeeder::class);
        $this->call(SlidersTableSeeder::class);
        // $this->call(ContactsTableSeeder::class);
        // $this->call(SubCategoriesTableSeeder::class);
        // $this->call(ItemsTableSeeder::class);
    }
}
