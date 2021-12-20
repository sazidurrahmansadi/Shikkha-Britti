<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\TenantScope;

class MonthlyStatement extends Model
{

    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function account()
    {
        return $this->belongsTo(Account::class);
    }

    // protected static function booted()
    // {
    //     static::addGlobalScope(new TenantScope);

    //     static::creating(function ($model){
    //         if (session()->has('tenant_id')) {
    //             $model->tenant_id = session()->get('tenant_id');
    //         }
    //     });
    // }
}
