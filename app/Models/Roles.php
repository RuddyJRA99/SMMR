<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roles extends Model
{
    use HasFactory;
    
    protected $table = 'ROLES';
    protected $primaryKey = 'ID';
    protected $fillable = [
        'NAME'
    ];

    //pertenece a: al modelo usuario
    public function users(){
        return $this->hasMany(Users::class);
    } 
}
