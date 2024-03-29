<?php

namespace App\Models;

use App\Scopes\TenantScope;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tenant extends Model
{
    use HasFactory;

        /**

     * The attributes that are mass assignable.

     *

     * @var array

     */

    protected $fillable = [

        'name',

    ];

    public function donor()
    {
        return $this->hasMany(Donor::class);
    }

}
