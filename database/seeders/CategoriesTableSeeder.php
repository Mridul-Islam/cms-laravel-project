<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('categories')->insert([
            'name' => 'React',
            'created_at' => '2022-02-04 11:24:25',
            'updated_at' => '2022-02-04 11:24:25'
        ]);
        DB::table('categories')->insert([
            'name' => 'Vue.js',
            'created_at' => '2022-02-04 11:26:25',
            'updated_at' => '2022-02-04 11:26:25'
        ]);
    }
}
