<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TimeTable extends Model
{
    protected $guarded = [];

    public function class()
    {
        return $this->hasOne(Classe::class, 'id', 'class_id');
    }

    public function student()
    {
        return $this->hasOne(Student::class, 'id', 'student_id');
    }

    public function subject()
    {
        return $this->hasOne(Subject::class, 'id', 'subject_id');
    }

    public function teacher()
    {
        return $this->hasOne(Teacher::class, 'id', 'teacher_id');
    }
}
