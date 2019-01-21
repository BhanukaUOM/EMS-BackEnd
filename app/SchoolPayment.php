<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SchoolPayment extends Model
{
    public function school()
    {
        return $this->hasOne(School::class);
    }
}
