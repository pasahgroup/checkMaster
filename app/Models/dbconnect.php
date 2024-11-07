<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class dbconnect extends Model
{
    use HasFactory;
  protected $table="canteens";

   // public function scopeTest(){
   //  echo "This is a test function";
   // }

    public static function dbConnect($n){
     $value = DB::select('select * from my_companies where id =1 and status="Active"');
      return $value;
    }

}
