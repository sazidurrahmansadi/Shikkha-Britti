<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\TenantScope;

class Donor extends Model
{

    protected $fillable = [
        'user_id',
        'tenant_id',
        'address',
        'occupation',
        'dob',
        'company',
        'position',
        'country',
    ];


    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function tenant()
    {
        return $this->hasMany(Tenant::class);
    }

    public function review_student()
    {
        return $this->hasMany(ReviewedApplication::class);
    }

    public function scholarship()
    {
        return $this->hasMany(Scholarship::class);
    }



    protected static function booted()
    {
        static::addGlobalScope(new TenantScope);

        static::creating(function ($model){
            if (session()->has('tenant_id')) {
                $model->tenant_id = session()->get('tenant_id');
            }
        });
    }
}
