<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    public function user()
    {
        return $this->hasOne(User::class);
    }

    public function parent()
    {
        return $this->hasOne(Guardian::class);
    }

    public function payment()
    {
        return $this->hasMany(Payment::class);
    }

    public function attendance()
    {
        return $this->hasMany(Attendance::class);
    }

    public function timetable()
    {
        return $this->hasMany(TimeTable::class);
    }
}
