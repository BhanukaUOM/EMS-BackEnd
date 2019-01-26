<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSchoolPaymentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('school_payments', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('school_id');
            $table->integer('amount');
            $table->string('note')->nullable();
            $table->dateTime('payment_at');
            $table->string('transaction_id')->nullable();
            $table->timestamps();

            $table->foreign('school_id')->references('id')->on('schools');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('school_payments');
    }
}
