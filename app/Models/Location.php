<?php

namespace App\Models;

use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Location extends Model
{
    use Translatable, SoftDeletes;

    protected $guarded  = ['id'];
    protected $casts    = ['created_at' => 'date:Y-m-d'];
    protected $dates    = ['created_at', 'updated_at', 'deleted_at'];
    public $translatedAttributes    = ['name'];

    public function scopeActive($query)
    {
        return $query->where('active', 1);
    }

    public function scopeInactive($query)
    {
        return $query->where('active', 0);
    }

    public function country()
    {
        return $this->belongsTo(Country::class);
    }
}
