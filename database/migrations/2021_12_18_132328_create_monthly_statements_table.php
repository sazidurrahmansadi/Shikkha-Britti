<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMonthlyStatementsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('monthly_statements', function (Blueprint $table) {
            $table->unsignedBigInteger('id');
            $table->foreignId('student_id')->constrained();
            $table->foreignId('scholarship_id')->constrained();
            $table->double('approved_amount');
            $table->double('approval_cost')->nullable();
            $table->date('month_year');
            $table->text('note')->nullable();
            $table->integer('account_id')->nullable();
            $table->string('status')->default("PENDING");
            $table->timestamps();

            $table->index(['student_id', 'scholarship_id', 'month_year']);
            $table->primary(['student_id', 'scholarship_id', 'month_year']);

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('monthly_statements');
    }
}
