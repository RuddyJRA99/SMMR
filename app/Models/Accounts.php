<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Accounts extends Model
{
    use HasFactory;

    protected $table = 'ACCOUNTS';
    protected $primaryKey = 'ID';
    protected $fillable = [
        'BALANCE',
        'ID_USUARIO',
    ];

    public function usuario(){
        return $this->belongsTo(Users::class,'ID_USUARIO');
    } 

    public function deposits(){
        return $this->hasMany(Deposits::class);
    }

    public function transactions(){
        return $this->hasMany(Transactions::class);
    }
}
