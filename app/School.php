<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class School extends Model
{
    public function user()
    {
        return $this->hasMany(User::class);
    }

    public function package()
    {
        return $this->hasOne(Package::class);
    }

    public function payment()
    {
        return $this->hasMany(SchoolPayment::class);
    }
}
