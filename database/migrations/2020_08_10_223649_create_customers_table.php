<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCustomersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customers', function (Blueprint $table) {
            $table->id();
            $table->string('first_name');
            $table->string('last_name');
            $table->string('mobile');
            $table->string('verify_code', 10);
            $table->string('editable_code')->nullable();
            $table->string('new_mobile')->nullable();
            $table->integer('status')->default(0);
            $table->integer('type')->default(2);
            $table->string('version_name')->default('1.0.0');
            $table->text('access_token');
            $table->text('device_token')->nullable();
            $table->integer('active')->default(1);
            $table->string('model')->nullable();
            $table->string('version')->nullable();
            $table->integer('is_show')->default(0);
            $table->text('notes');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('customers');
    }
}
