<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class SubjectGroupSubject extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subject_subject_groups', function (Blueprint $table) {
            $table->unsignedInteger('subject_group_id');
            $table->unsignedInteger('subject_id');
            $table->timestamps();

            $table->foreign('subject_group_id')->references('id')->on('subject_groups');
            $table->foreign('subject_id')->references('id')->on('subjects');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
