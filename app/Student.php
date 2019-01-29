<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    public function user()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }

    public function parent()
    {
        return $this->hasOne(Guardian::class, 'id', 'parent_id');
    }

    public function location()
    {
        return $this->hasOne(Location::class);
    }

    public function payment()
    {
        return $this->hasMany(Payment::class);
    }
    public function package()
    {
        return $this->hasOne(Package::class, 'id', 'package_id');
    }

    public function attendance()
    {
        return $this->hasMany(Attendance::class);
    }

    public function timetable()
    {
        return $this->hasMany(TimeTable::class);
    }

    public function subjectGroup()
    {
        return $this->hasOne(SubjectGroup::class, 'id', 'subject_group_id');
    }

    public function class()
    {
        return $this->hasOne(Classe::class, 'id', 'class_id');
    }
}
