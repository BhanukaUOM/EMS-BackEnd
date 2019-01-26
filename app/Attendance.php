<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    protected $fillable = ['student_id', 'year', 'month', 'day', 'state', 'class_id'];
    public function student()
    {
        return $this->hasOne(Student::class);
    }
}
