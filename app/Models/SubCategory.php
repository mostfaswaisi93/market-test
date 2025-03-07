<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\App;

class SubCategory extends Model
{
    use Translatable, SoftDeletes;

    protected $table    = 'subcategories';
    protected $guarded  = [];
    protected $appends  = ['image_path', 'icon_path', 'image_path_ar', 'image_path_en'];
    protected $casts    = ['created_at' => 'date:Y-m-d'];
    protected $dates    = ['created_at', 'updated_at', 'deleted_at'];
    public $translatedAttributes  = ['name'];

    public function getImagePathAttribute()
    {
        if (App::isLocale('ar')) {
            return asset('uploads/subcategory_images/ar/' . $this->image_ar);
        } elseif (App::isLocale('en')) {
            return asset('uploads/subcategory_images/en/' . $this->image_en);
        } elseif (App::isLocale('tr')) {
            return asset('uploads/subcategory_images/tr/' . $this->image_tr);
        } elseif (App::isLocale('fr')) {
            return asset('uploads/subcategory_images/fr/' . $this->image_fr);
        }
    }

    public function getImagePathArAttribute()
    {
        return asset('uploads/subcategory_images/ar/' . $this->image_ar);
    }

    public function getImagePathEnAttribute()
    {
        return asset('uploads/subcategory_images/en/' . $this->image_en);
    }

    public function getIconPathAttribute()
    {
        return asset('uploads/subcategory_icons/' . $this->icon);
    }

    public function scopeActive($query)
    {
        return $query->where('active', 1);
    }

    public function scopeInactive($query)
    {
        return $query->where('active', 0);
    }

    // public function items()
    // {
    //     return $this->hasMany(Item::class);
    // }
}
