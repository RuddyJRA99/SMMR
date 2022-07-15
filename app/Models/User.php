<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable implements MustVerifyEmail
{
    use HasFactory;
    use Notifiable;

    protected $table = 'USERS';
    protected $primaryKey = 'ID';
    protected $fillable = [
        'dni',
        'name',
        'surname',
        'email',
        'password',
        'image_path',
        'ID_ROLE'
    ];

    //pertenece a muchos: roles
    public function role(){
        return $this->belongsTo(Roles::class, 'ID_ROLE');
    } 

    //
    public function accounts(){
        return $this->hasMany(Accounts::class);
    }
}
