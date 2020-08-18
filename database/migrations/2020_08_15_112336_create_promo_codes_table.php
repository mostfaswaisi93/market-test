<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePromoCodesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('promo_codes', function (Blueprint $table) {
            $table->id();
            $table->text('codetext');
            $table->integer('type')->default(0)->comment('0 => %');
            $table->float('discount');
            $table->dateTime('date_from');
            $table->dateTime('date_to');
            $table->integer('active')->default(1);
            $table->integer('once')->default(0)->comment('0 => once');
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
        Schema::dropIfExists('promo_codes');
    }
}
