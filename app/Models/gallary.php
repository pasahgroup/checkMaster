<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class gallary extends Model
{
    use HasFactory;
      protected $fillable = [
        'course_id',
        'subcourse_id',
        'title',
        'photo',
        'video_url',
        'description',
        'status',
        'user_id'
    ];
}
