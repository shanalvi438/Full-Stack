<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductColorsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $colors = [
            ['name' => 'Red', 'color_code' => '#FF0000'],
            ['name' => 'Blue', 'color_code' => '#0000FF'],
            ['name' => 'Green', 'color_code' => '#00FF00'],
            ['name' => 'Yellow', 'color_code' => '#FFFF00'],
            ['name' => 'Black', 'color_code' => '#000000'],
            ['name' => 'White', 'color_code' => '#FFFFFF'],
        ];

        // Insert data into the 'product_colors' table
        DB::table('product_colors')->insert($colors);
    }
}
