<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\TenantScope;

class Contact extends Model
{

    protected $fillable = [
        'fname',
        'lname',
        'email',
        'phone',
        'message',
    ];

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