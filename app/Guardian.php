<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Guardian extends Model
{
    public function user()
    {
        return $this->hasOne(User::class);
    }

    public function student()
    {
        return $this->hasMany(Student::class);
    }
}
