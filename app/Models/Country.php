<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Translatable;
use Illuminate\Database\Eloquent\SoftDeletes;

class Country extends Model
{
    use Translatable, SoftDeletes;

    protected $table    = 'countries';
    protected $guarded  = ['id'];
    protected $casts    = ['created_at' => 'date:Y-m-d'];
    protected $dates    = ['created_at', 'updated_at', 'deleted_at'];
    public $translatedAttributes = ['name', 'currency'];

    public function scopeActive($query)
    {
        return $query->where('active', 1);
    }

    public function scopeInactive($query)
    {
        return $query->where('active', 0);
    }

    public function locations()
    {
        return $this->hasMany(Location::class);
    }

    public function cities()
    {
        return $this->hasMany(City::class);
    }
}
