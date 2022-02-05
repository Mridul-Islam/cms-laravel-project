<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'role_id'   => 2,
            'name'      => Str::random(10),
            'email'     => Str::random(10) . '@gmail.com',
            'is_active' => 1,
            'password'  => bcrypt('12345'),
            'created_at'=> '2022-01-31 04:45:09',
            'updated_at'=> '2022-02-02 04:45:09'
        ]);
    }
}
