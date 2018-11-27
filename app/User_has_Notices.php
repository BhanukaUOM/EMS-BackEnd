<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User_has_Notices extends Model
{
    public function notice()
    {
        return $this->hasOne('App\Notice', 'id', 'notice_id');
    }

    public function user()
    {
        return $this->hasOne('App\User', 'id', 'user_id');
    }

    public function role()
    {
        return $this->hasOne('Spatie\Permission\Models\Role', 'id', 'role_id');
    }
}
