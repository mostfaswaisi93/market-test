<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\SoftDeletes;

class Slider extends Model
{
    use Translatable, SoftDeletes;

    protected $table    = 'sliders';
    protected $guarded  = [];
    protected $appends  = ['image_path'];
    protected $casts    = ['created_at' => 'date:Y-m-d'];
    protected $dates    = ['created_at', 'updated_at', 'deleted_at'];
    public $translatedAttributes  = ['text'];

    public function getImagePathAttribute()
    {
        return asset('uploads/slider_images/' . $this->image);
    }

    public function scopeActive($query)
    {
        return $query->where('active', 1);
    }

    public function scopeInactive($query)
    {
        return $query->where('active', 0);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
