<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class bank extends Model
{
    use HasFactory;
      protected $fillable = [
        'bank_name',
        'swift_code',
        'country',
        'account_name',
        'account_no',
        'user_id'
    ];
}
