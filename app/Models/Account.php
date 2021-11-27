<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Scopes\TenantScope;

class Account extends Model
{
    protected $fillable = [
        'account_title',
        'account_type',
        'account_number',
        'bank_name',
        'branch_name',
        'note',
    ];

    const account_types = array('BANK', 'BKASH', 'NAGAD', 'ROCKET', 'UPAY');

    
    public function accountable()
    {
        return $this->morphTo();
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
