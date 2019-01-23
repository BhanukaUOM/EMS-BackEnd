<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NoticeReadStatus extends Model
{
    protected $fillable = [
        'user_id', 'notice_id',
    ];

    public function user()
    {
        return $this->hasOne(User::class);
    }

    public function notice()
    {
        return $this->hasOne(Notice::class);
    }
}
