<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductsSeeder extends Seeder
{
    public function run()
    {
        $products = [
            [
                'name' => 'Product A',
                'category_id' => 1,
                'subcategory_id' => 1,
                'image_path' => 'products/productA.jpg',
                'color' => 'Red',
                'size' => 'Medium',
                'brand_id' => 1,
                'supplier_id' => 1,
                'current_purchase_cost' => 10.00,
                'current_sale_price' => 20.00,
                'current_wholesale_price' => 15.00,
                'wholesale_minimum_qty' => 10,
                'discount_type' => 'percentage',
                'discount' => 10.00,
                'unit_type' => 'Piece',
                'description' => 'Description for Product A.',
            ],
            [
                'name' => 'Product B',
                'category_id' => 2,
                'subcategory_id' => 2,
                'image_path' => 'products/productB.jpg',
                'color' => 'Blue',
                'size' => 'Large',
                'brand_id' => 2,
                'supplier_id' => 2,
                'current_purchase_cost' => 15.00,
                'current_sale_price' => 25.00,
                'current_wholesale_price' => 18.00,
                'wholesale_minimum_qty' => 12,
                'discount_type' => 'fixed',
                'discount' => 5.00,
                'unit_type' => 'Set',
                'description' => 'Description for Product B.',
            ],
            
        ];

        // Insert data into the 'products' table
        DB::table('products')->insert($products);
    }
}