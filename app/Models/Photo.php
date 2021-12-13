<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    use HasFactory;

    protected $fillable = ['image'];

    protected $image = '/images/';

    public function getimageAttribute($photo){
        return $this->image . $photo;
    }





} //End of class
