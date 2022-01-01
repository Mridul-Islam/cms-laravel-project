<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;


class Post extends Model
{
    use HasFactory;
    use Sluggable;

    protected $fillable = ['user_id', 'category_id', 'photo_id', 'title', 'body', 'slug'];

    public function sluggable(): array
    {
        return [
            'slug' => [
                'source' => 'title'
            ]
        ];
    }

//    public function getRouteKeyName(): string
//    {
//        return 'slug';
//    }

    public function user(){
        return $this->belongsTo('App\Models\User');
    }

    public function photo(){
        return $this->belongsTo('App\Models\Photo');
    }

    public function category(){
        return $this->belongsTo('App\Models\Category');
    }

    public function comments(){
        return $this->hasMany('App\Models\Comment');
    }


} //End of class
