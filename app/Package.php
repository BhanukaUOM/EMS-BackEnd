<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Package extends Model
{
    public function school()
    {
        return $this->hasMany(School::class);
    }
}
