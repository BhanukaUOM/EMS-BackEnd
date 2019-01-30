<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    protected $guarded = [];
    public function subjectGroup()
    {
        return $this->belongsToMany(SubjectGroup::class);
    }
}
