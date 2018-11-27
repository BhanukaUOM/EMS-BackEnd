<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User_has_Notices extends Model
{
    public function notice()
    {
        return $this->hasOne(App\Notice::class);
    }

    public function user()
    {
        return $this->hasOne(App\User::class);
    }

    public function role()
    {
        return $this->hasOne(Spatie\Permission\Models\Role::Class);
    }
}
