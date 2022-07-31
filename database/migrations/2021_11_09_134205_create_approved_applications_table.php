<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateApprovedApplicationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('approved_applications', function (Blueprint $table) {
            $table->id();
            $table->foreignId('tenant_id')->nullable()->constrained();
            $table->foreignId('student_id')->references('id')->on('students');
            $table->foreignId('scholarship_id')->references('id')->on('scholarships');
            $table->double('approved_amount')->nullable();
<<<<<<< Updated upstream:database/migrations/2021_11_09_134205_create_approved_applications_table.php
=======
            // $table->double('approved_cost')->nullable();
>>>>>>> Stashed changes:database/migrations/2022_06_07_052500_create_approved_applications_table.php
            $table->date('from_date')->nullable();
            $table->date('to_date')->nullable();
            $table->date('approval_date')->nullable();
            $table->string('approved_by')->nullable();
            $table->foreignId('account_id')->references('id')->on('accounts');
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
        Schema::dropIfExists('approved_applications');
    }
}
