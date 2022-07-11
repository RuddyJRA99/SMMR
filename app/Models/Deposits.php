<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Deposits extends Model
{
    use HasFactory;

    protected $table = 'DEPOSITS';
    protected $primaryKey = 'ID';
    protected $fillable = [
        'CONCEPTS',
        'AMOUNT',
    ];

    public function account(){
        return $this->belongsTo(Accounts::class, 'ID_ACCOUNT');
    }

    public function materials(){
        return $this->belongsToMany(Materials::class, 'ACCOUNTS_DEPOSITS', 'ID_DEPOSIT', 'ID_MATERIAL')->withPivot('AMOUNT');;
    }
}
