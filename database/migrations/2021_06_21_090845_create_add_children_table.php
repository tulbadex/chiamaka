<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAddChildrenTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('add_children', function (Blueprint $table) {
            $table->id();
            $table->string('childFullName');
            $table->string('dateOfBirth');
            $table->string('gender');
            $table->string('relationship');
            $table->string('medRecord')->nullable;
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
        Schema::dropIfExists('add_children');
    }
}
