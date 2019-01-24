<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->increments('id');
            $table->string('indexNo')->unique();
            $table->boolean('isPayable');
            $table->unsignedInteger('user_id')->unique();
            $table->dateTime('admissionDate')->nullable();
            $table->string('gender')->nullable();
            $table->date('birthday')->nullable();
            $table->string('nationality')->nullable();
            $table->string('religion')->nullable();
            $table->unsignedInteger('parent_id');
            $table->unsignedInteger('subject_group_id');
            $table->unsignedInteger('package_id');
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('parent_id')->references('id')->on('guardians');
            $table->foreign('subject_group_id')->references('id')->on('subject_groups');
            $table->foreign('package_id')->references('id')->on('packages');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('students');
    }
}
