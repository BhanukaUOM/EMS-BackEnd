<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Classe extends Model
{
    public function teacher()
    {
        return $this->hasOne(Teacher::class);
    }

    public function subject()
    {
        return $this->belongsToMany(Subject::class);
    }
}
