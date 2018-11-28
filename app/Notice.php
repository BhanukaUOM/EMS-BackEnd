<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Notice extends Model
{
    public function user_has_notice()
    {
        return $this->hasOne(User_has_Notices::class);
    }

    public function user()
    {
        return $this->hasMany(User::class);
    }
}
