<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class NoticeUser extends Model
{
    public $fillable = [
        'isRoleBased', 'user_id', 'role_id', 'notice_id'
    ];
}
