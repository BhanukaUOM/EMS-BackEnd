<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Teacher extends Model
{
    public function user()
    {
        return $this->hasOne(User::class);
    }

    public function class()
    {
        return $this->hasOne(Classe::class);
    }

    public function timetable()
    {
        return $this->hasMany(TimeTable::class);
    }

    public function subjectGroup()
    {
        return $this->hasOne(SubjectGroup::class, 'id', 'subject_group_id');
    }
}
