<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Contact extends Model
{
    use SoftDeletes;

    protected $table    = 'contacts';
    protected $guarded  = [];
    protected $casts    = ['created_at' => 'date:Y-m-d'];
    protected $dates    = ['created_at', 'updated_at', 'deleted_at'];

    public function scopeActive($query)
    {
        return $query->where('active', 1);
    }

    public function scopeInactive($query)
    {
        return $query->where('active', 0);
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }
}
