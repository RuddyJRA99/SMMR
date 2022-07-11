<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MaterialsDeposits extends Model
{
    use HasFactory;

    protected $table = 'ACCOUNTS_DEPOSITS';
    protected $primaryKey = 'ID';
    protected $fillable = [
        'ID_MATERIAL',
        'ID_DEPOSIT',
        'AMOUNT'
    ];
}
