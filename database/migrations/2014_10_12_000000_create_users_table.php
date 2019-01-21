<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->string('address')->nullable();
            $table->string('about')->nullable();
            $table->unsignedInteger('school_id');
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('avatar')->default('avatar.png');
            $table->boolean('active')->default(false);
            $table->string('activation_token');
            $table->rememberToken();
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('school_id')->references('id')->on('schools');
        });

        DB::table('users')->insert(
            array(
                'name' => 'admin',
                'email' => 'admin@ems.com',
                'address' => "address",
                'about' => "about",
                'school_id' => 1,
                'password' => "$2y$10\$JU6X.pevuayI.wH2lmpsm.fzlb6TeU3lLwnzrajL697y31gyuVUYy",
                'avatar' => "avatar.png",
                'active' => true
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
        Schema::dropIfExists('users');
    }
}
