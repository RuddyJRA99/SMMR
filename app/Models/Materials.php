<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Materials extends Model
{
    use HasFactory;

    protected $table = 'MATERIALS';
    protected $primaryKey = 'ID';
    protected $fillable = [
        'NAME',
        'VALUE'
    ];

}
