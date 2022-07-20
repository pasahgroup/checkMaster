<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class asset extends Model
{
    use HasFactory;
     protected $fillable = [
         'property_id',
         'location_id',
        'metaname_id',
        'asset_name',
        'asset_type',

        'asset_brand',
        'asset_location',
        'asset_version',

        'asset_serial_no',
        'asset_barcode',
        'asset_tag_no',
        'asset_description',
        'photo',
        'status',
        'user_id'
    ];
}
