<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\App;

class Brand extends Model
{
    use Translatable, SoftDeletes;

    protected $table    = 'brands';
    protected $guarded  = [];
    protected $appends  = ['image_path'];
    protected $casts    = ['created_at' => 'date:Y-m-d'];
    protected $dates    = ['created_at', 'updated_at', 'deleted_at'];
    public $translatedAttributes  = ['name'];

    public function getImagePathAttribute()
    {
        return asset('uploads/brand_images/' . $this->image);
    }

    public function scopeActive($query)
    {
        return $query->where('active', 1);
    }

    public function scopeInactive($query)
    {
        return $query->where('active', 0);
    }
}
