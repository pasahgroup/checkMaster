<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnswersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('answers', function (Blueprint $table) {
         $table->bigIncrements('id');
          $table->integer('property_id')->nullable();
          $table->integer('metaname_id')->nullable();
        $table->integer('indicator_id')->nullable();
         $table->integer('opt_answer_id')->nullable();
           $table->string('answer')->nullable();
           $table->integer('asset_id')->nullable();
            $table->integer('photo')->nullable();
             $table->integer('description')->nullable();
            $table->string('status')->default('Active');
            $table->boolean('action')->default(0);
            $table->integer('user_id')->unsigned();
            $table->date('datex')->nullable();
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
        Schema::dropIfExists('answers');
    }
}
