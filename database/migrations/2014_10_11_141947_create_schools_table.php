<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSchoolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('schools', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->unsignedInteger('package_id')->default(1);
            $table->string('email')->nullable();
            $table->string('logo');
            $table->unsignedInteger('phone');
            $table->string('Address');
            $table->dateTime('nextPayment_at')->nullable();
            $table->timestamps();

            $table->foreign('package_id')->references('id')->on('packages');
        });


        DB::table('schools')->insert(
            array(
                'name' => 'Default Schoo;',
                'logo' => "default.png",
                'phone' => 0,
                'address' => 'address'
            )
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('schools');
    }
}
