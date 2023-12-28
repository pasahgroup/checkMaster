<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubcoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subcourses', function (Blueprint $table) {
            $table->bigIncrements('id');
             $table->integer('course_id')->nullable();
              $table->string('title_name')->nullable();
            $table->string('course_name',48)->nullable();
            $table->string('subcourse_name')->nullable();            
             $table->string('subcourse_description')->nullable();
            $table->decimal('subcourse_cost')->default(0.00);
             $table->string('subcourse_duration')->nullable();             
              $table->string('unit')->nullable();
                $table->string('photo')->nullable();
            $table->string('status');
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
        Schema::dropIfExists('subcourses');
    }
}
