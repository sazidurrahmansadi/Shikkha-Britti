<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRenewalFormsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('renewal_forms', function (Blueprint $table) {
            $table->id();
            $table->foreignId('tenant_id')->nullable()->constrained();
            $table->foreignId('student_id')->constrained();
            $table->foreignId('scholarship_id')->constrained();
            $table->string('level')->nullable();
            $table->string('class_degree')->nullable();
            $table->string('marks_cgpa1')->nullable();
            $table->date('date1')->nullable();
            $table->string('marks_cgpa2')->nullable();
            $table->date('date2')->nullable();
            $table->text('achievement')->nullable();
            $table->text('financial')->nullable();
            $table->text('opinion')->nullable();
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
        Schema::dropIfExists('renewal_forms');
    }
}
