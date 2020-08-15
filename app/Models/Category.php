<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\SoftDeletes;

class Category extends Model
{
    use Translatable, SoftDeletes;

    protected $guarded              = [];
    public $translatedAttributes    = ['name'];

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
        return asset('uploads/category_images/' . $this->image);
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
