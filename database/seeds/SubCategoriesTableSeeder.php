<?php

use App\Models\SubCategory;
use Illuminate\Database\Seeder;

class SubCategoriesTableSeeder extends Seeder
{
    public function run()
    {
        $subcategories = ['SubCategory One', 'SubCategory Two', 'SubCategory Three'];
        foreach ($subcategories as $subcategory) {
            SubCategory::create([
                'category_id' => 1,
                'ar' => ['name' => $subcategory],
                'en' => ['name' => $subcategory],
            ]);
        }
        foreach ($subcategories as $subcategory) {
            SubCategory::create([
                'category_id' => 2,
                'ar' => ['name' => $subcategory],
                'en' => ['name' => $subcategory],
            ]);
        }
        foreach ($subcategories as $subcategory) {
            SubCategory::create([
                'category_id' => 3,
                'ar' => ['name' => $subcategory],
                'en' => ['name' => $subcategory],
            ]);
        }
    }
}
