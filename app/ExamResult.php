<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ExamResult extends Model
{
    protected $hidden = ['created_at', 'updated_at'];

    public function subject()
    {
        return $this->hasOne(Subject::class, 'id', 'subject_id');
    }
}
