<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\BlogPost;
use App\Models\Category;
use App\Models\User;

class BlogPostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */

    protected $model = BlogPost::class;

    public function definition()
    {
        

        return [
            'title' => $this->faker->sentence(),
            'body' => $this->faker->paragraphs(3, true),
            'user_id' => User::inRandomOrder()->first()->id,
            'categorys_id' => Category::inRandomOrder()->first()->id,

        ];
    }
}
