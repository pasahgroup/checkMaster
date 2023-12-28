<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class course extends Model
{
    use HasFactory;
        protected $fillable = [
        'course_name',
        'course_description',
        'course_cost',
        'course_duration',
        'unit',
        'status',
        'user_id'
    ];
}
