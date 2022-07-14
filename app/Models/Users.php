<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;   
use Illuminate\Notifications\Notifiable;

class Users extends Authenticatable
{
    use HasFactory;
    use Notifiable;

    protected $table = 'USERS';
    protected $primaryKey = 'ID';
    protected $fillable = [
        'DNI',
        'NAME',
        'SURNAME',
        'EMAIL',
        'VER_MAIL',
        'PASSWORD',
        'IMAGE_PATH',
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
