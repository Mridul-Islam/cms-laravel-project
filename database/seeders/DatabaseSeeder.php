<?php

namespace Database\Seeders;

use App\Models\Category;
use App\Models\Photo;
use App\Models\Post;
use App\Models\Role;
use Illuminate\Database\Seeder;
use App\Models\User;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
//        $this->call(UsersTableSeeder::class);
//        $this->call(CategoriesTableSeeder::class);

        User::Factory()->count(5)->create();
        Post::Factory()->count(10)->create();
        Category::Factory()->create();
        Photo::Factory()->create();
        Role::Factory()->create();

    }
}
