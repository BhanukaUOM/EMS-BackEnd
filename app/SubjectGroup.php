<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SubjectGroup extends Model
{
    protected $guarded = [];
    public function subject()
    {
        return $this->belongsToMany(Subject::class);
    }

    public function student()
    {
        return $this->belongsTo(Student::class);
    }
}
