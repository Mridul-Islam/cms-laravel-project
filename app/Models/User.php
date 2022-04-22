<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;


    protected $fillable = ['name', 'email', 'password', 'role_id', 'is_active', 'photo_id'];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public $image_path = 'images';


    public function role(){
        return $this->belongsTo('App\Models\Role');
    }

    public function photo(){
        return $this->belongsTo(Photo::class);
    }

    public function isAdmin(){
        if($this->role_id){
            if($this->role->name == 'Administrator'){
                return true;
            }
            else{
                return false;
            }
        }
    }

    public function posts(){
        return $this->hasMany('App\Models\Post');
    }

//    public function getGravatarAttribute(){
//        $hash = md5(strtolower(trim($this->attributes['email']))) . "?d=mm&s=50";
//        return "https://www.gravatar.com/avatar/$hash";
//    }

//    public function getImageAttribute($image){
//        return $this->image_path . $image;
//    }





} //End of class
