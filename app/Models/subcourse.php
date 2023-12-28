<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class subcourse extends Model
{
    use HasFactory;
       protected $fillable = [
        'course_id',
        'course_name',
        'title_name',
         'subcourse_name',
        'subcourse_description',
        'subcourse_cost',
        'subcourse_duration',
        'unit',
        'photo',
        'status',
        'user_id'
    ];
}
