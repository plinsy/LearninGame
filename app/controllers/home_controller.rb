class HomeController < ApplicationController
  include HomeHelper
  
  def index
    @teachers = first_teachers
  	@exams = coming_exams
  	if current_user
  		@teacher = current_teacher
	  	@student = current_student
	  	if @student
	  		@tests = Test.where(level: @student.level, is_done: false)
	  	end
  	end
  end

  private
  def coming_exams
  	exams = []
  	Exam.all.each do |exam|
  		exams << exam if exam.start_date > Time.now
  	end
  end
end
