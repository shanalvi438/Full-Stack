<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductSizesSeeder extends Seeder
{
    public function run()
    {
        $sizes = [
            ['size' => 'Small'],
            ['size' => 'Medium'],
            ['size' => 'Large'],
            ['size' => 'Extra Large'],
            ['size' => 'XXL'],
        ];

        // Insert data into the 'product_sizes' table
        DB::table('product_sizes')->insert($sizes);
    }
}