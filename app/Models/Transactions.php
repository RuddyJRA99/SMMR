<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transactions extends Model
{
    use HasFactory;

    protected $table = 'TRANSACTIONS';
    protected $primaryKey = 'ID';
    protected $fillable = [
        'BALANCE',
        'ID_DEBITED_ACCOUNT',
        'ID_CREDITED_ACCOUNT',
        'CONCEPT',
    ];

    public function debitedAccount(){
        return $this->belongsTo(Accounts::class, 'ID_DEBITED_ACCOUNT');
    }

    public function creditedAccount(){
        return $this->belongsTo(Accounts::class, 'ID_CREDITED_ACCOUNT');
    }
}
