<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_id'     => 1,
            'category_id' => $this->faker->numberBetween(1,5),
            'photo_id'    => 1,
            'title'       => $this->faker->sentence(5,10),
            'body'        => $this->faker->paragraphs(rand(10,15), true)
        ];
    }
}
