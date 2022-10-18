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
            $table->foreignId('student_id')->constrained();
            $table->foreignId('mentor_id')->nullable()->constrained();
            $table->foreignId('scholarship_id')->constrained();
            $table->double('approved_amount')->nullable();
            $table->double('approval_cost')->nullable();
            $table->date('from_date')->nullable();
            $table->date('to_date')->nullable();
            $table->date('approval_date')->nullable();
            $table->string('approved_by')->nullable();
            $table->foreignId('account_id')->constrained();
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
