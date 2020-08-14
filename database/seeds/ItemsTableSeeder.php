<?php

use App\Models\Item;
use Illuminate\Database\Seeder;

class ItemsTableSeeder extends Seeder
{
    public function run()
    {
        $items = ['Item One', 'Item Two'];
        foreach ($items as $item) {
            Item::create([
                'category_id' => 1,
                'ar' => ['name' => $item, 'description' => $item . ' desc'],
                'en' => ['name' => $item, 'description' => $item . ' desc'],
                'purchase_price' => 28,
                'sale_price' => 30.25,
                'stock' => 150,
            ]);
        }
        foreach ($items as $item) {
            Item::create([
                'category_id' => 2,
                'ar' => ['name' => $item, 'description' => $item . ' desc'],
                'en' => ['name' => $item, 'description' => $item . ' desc'],
                'purchase_price' => 95,
                'sale_price' => 100.25,
                'stock' => 120,
            ]);
        }
        foreach ($items as $item) {
            Item::create([
                'category_id' => 3,
                'ar' => ['name' => $item, 'description' => $item . ' desc'],
                'en' => ['name' => $item, 'description' => $item . ' desc'],
                'purchase_price' => 25,
                'sale_price' => 32,
                'stock' => 70,
            ]);
        }
    }
}
