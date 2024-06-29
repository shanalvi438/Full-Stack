<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Role;

class RolesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles = [
            [
                'name' => 'Admin',
                'access_role_list' => '0=inactive,1=active',
                'status' => 1, // 1 for active
                'created_at' => now(),
                'created_by' => 'Seeder',
                'updated_at' => now(),
                'updated_by' => 'Seeder',
                'deleted' => 0, // 0 for active
                'deleted_at' => null,
                'deleted_by' => null,
            ],
            [
                'name' => 'User',
                'access_role_list' => '0=inactive,1=active',
                'status' => 1, // 1 for active
                'created_at' => now(),
                'created_by' => 'Seeder',
                'updated_at' => now(),
                'updated_by' => 'Seeder',
                'deleted' => 0, // 0 for active
                'deleted_at' => null,
                'deleted_by' => null,
            ],
            // Add more roles as needed
        ];

        // Insert roles into the database
        foreach ($roles as $role) {
            Role::create($role);
        }
    }
}
