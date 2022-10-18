<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Scopes\TenantScope;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ApprovedApplication extends Model
{
    use HasFactory;
    
    public function student()
    {
        return $this->belongsTo(Student::class);
    }

    public function scholarship()
    {
        return $this->belongsTo(Scholarship::class);
    }

    public function account()
    {
        return $this->belongsTo(Account::class);
    }

    public function renewal_form()
    {
        return $this->belongsTo(RenewalForm::class, 'scholarship_id');
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
