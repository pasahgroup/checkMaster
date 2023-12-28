<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGallariesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gallaries', function (Blueprint $table) {
              $table->bigIncrements('id');
             $table->integer('course_id')->nullable();
              $table->string('subcourse_id')->nullable();
            $table->string('title',48)->nullable();
            $table->string('photo',48)->nullable();            
             $table->string('video_url',48)->nullable();
             $table->string('description',450)->nullable();
            $table->string('status',12);
            $table->integer('user_id')->unsigned();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('gallaries');
    }
}
