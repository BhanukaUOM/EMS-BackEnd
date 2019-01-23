<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    protected $fillable = [
        'title', 'content', 'notice_from'
    ];

    public function users()
    {
        return $this->belongsToMany(User::class);
    }

    public function notice_read_statuses(){
        return $this->hasMany(NoticeReadStatus::class);
    }
}
