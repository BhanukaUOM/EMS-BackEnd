<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
    public function student()
    {
        return $this->hasOne(Student::class);
    }
}
