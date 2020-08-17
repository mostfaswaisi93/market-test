<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\App;

class Category extends Model
{
    use Translatable, SoftDeletes;

    protected $table    = 'categories';
    protected $guarded  = [];
    protected $appends  = ['image_path', 'icon_path', 'image_path_ar', 'image_path_en'];
    protected $casts    = ['created_at' => 'date:Y-m-d'];
    protected $dates    = ['created_at', 'updated_at', 'deleted_at'];
    public $translatedAttributes  = ['name'];

    public function getImagePathAttribute()
    {
        if (App::isLocale('ar')) {
            return asset('uploads/category_images/ar/' . $this->image_ar);
        } elseif (App::isLocale('en')) {
            return asset('uploads/category_images/en/' . $this->image_en);
        } elseif (App::isLocale('tr')) {
            return asset('uploads/category_images/tr/' . $this->image_tr);
        } elseif (App::isLocale('fr')) {
            return asset('uploads/category_images/fr/' . $this->image_fr);
        }
    }

    public function getImagePathArAttribute()
    {
        return asset('uploads/category_images/ar/' . $this->image_ar);
    }

    public function getImagePathEnAttribute()
    {
        return asset('uploads/category_images/en/' . $this->image_en);
    }

    public function getIconPathAttribute()
    {
        return asset('uploads/category_icons/' . $this->icon);
    }

    public function items()
    {
        return $this->hasMany(Item::class);
    }
}
