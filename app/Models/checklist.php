<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class checklist extends Model
{
    use HasFactory;
    public static function getAsset($n){
      $value=DB::table('assets')->select('id','property_id','metaname_id','asset_name')->where('metaname_id', $n)->get();
//dd($value);
      return $value;
    }

}
