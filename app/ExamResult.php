<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ExamResult extends Model
{
    protected $hidden = ['created_at', 'updated_at'];
    protected $guarded = [];

    public function subject()
    {
        return $this->hasOne(Subject::class, 'id', 'subject_id');
    }

    public function class()
    {
        return $this->hasOne(Classe::class, 'id', 'class_id');
    }

    public function student()
    {
        return $this->hasOne(Student::class, 'id', 'student_id');
    }
}
