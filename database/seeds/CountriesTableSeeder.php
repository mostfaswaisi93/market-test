<?php

use App\Models\Country;
use Illuminate\Database\Seeder;

class CountriesTableSeeder extends Seeder
{
    public function run()
    {
        Country::create([
            'ar' => ['name' => 'اليابان', 'currency' => 'ين ياباني'],
            'en' => ['name' => 'Japan', 'currency' => 'JPY'],
            'iso_code'      => 'JPN',
            'phone_code'    => '81',
        ]);
    }
}
