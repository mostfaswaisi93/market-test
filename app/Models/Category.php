<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\App;

class Category extends Model
{
    use Translatable, SoftDeletes;

    protected $guarded              = [];
    public $translatedAttributes    = ['name'];
    protected $appends = ['image_path', 'icon_path'];

    protected $casts = [
        'created_at'                => 'date:Y-m-d',
    ];

    protected $dates = [
        'created_at',
        'updated_at',
        'deleted_at',
    ];

    public function getImagePathAttribute()
    {
        if (App::isLocale('ar')) {
            return asset('uploads/category_images/ar/' . $this->image);
        } else {
            return asset('uploads/category_images/en/' . $this->image);
        }
    }

    public function getIconPathAttribute()
    {
        return asset('uploads/category_icons/' . $this->icon);
    }

    public function getImageSmallPathAttribute()
    {
        return asset('uploads/category_sm_images/' . $this->image_sm);
    }

    public function items()
    {
        return $this->hasMany(Item::class);
    }
}
