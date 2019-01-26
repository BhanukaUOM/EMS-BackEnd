<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTimeTablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('time_tables', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('week_day')->unsigned();
            $table->time('start');
            $table->time('end');
            $table->unsignedInteger('teacher_id');
            $table->unsignedInteger('subject_id');
            $table->unsignedInteger('class_id');
            $table->timestamps();

            $table->foreign('class_id')->references('id')->on('classes');
            $table->foreign('subject_id')->references('id')->on('subjects');
            $table->foreign('teacher_id')->references('id')->on('teachers');
        });

        // DB::statement("
        //     CREATE VIEW view_name AS
        //     SELECT column1, column2, ...
        //     FROM table_name
        //     WHERE condition;
        // ");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('time_tables');
    }
}
