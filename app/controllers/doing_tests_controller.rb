class DoingTestsController < ApplicationController
	include ApplicationHelper
  include DoingTestsHelper
	before_action :authenticate_student
  before_action :authenticate_test

  def new
    @user = current_user
    @student = current_student
    @test = current_test
    @totalPoints = points_total(@test)
  	@doing_test = DoingTest.new
  end

  def create
    @student = current_student
    
    @test = current_test

  	@doing_test = DoingTest.new(dt_params)

    @questions = current_test.questions

    @answers = get_answers

    check(@answers)

    increase_score(current_student)

  	respond_to do |format|
  		if @doing_test.save
        Result.create(title: @test.title, student_id: @student, test_id: @test.id) 			
  			format.html{ 
  				redirect_to student_results_path(@student.id),
  				notice: "You've finished successfully your test, have a look on your result" 
  			}
  		else
  			format.html{
  				render :new,
  				alert: @doing_test.errors.full_messages
  			}
  		end
  	end
  end
end
