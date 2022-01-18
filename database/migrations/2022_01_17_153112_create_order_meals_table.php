<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrderMealsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('order_meals', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id');
            $table->integer('token_no');
            $table->integer('lunch');
            $table->integer('lunch_amount');
            $table->integer('dinner');
            $table->integer('dinner_amount');
            $table->integer('total_meal');
            $table->integer('total_amount');
            $table->string('meal_given_date');
            $table->softDeletes();
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
        Schema::dropIfExists('order_meals');
    }
}
