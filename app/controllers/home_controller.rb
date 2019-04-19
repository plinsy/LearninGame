class HomeController < ApplicationController
  include ApplicationHelper

  def index
  	@user = current_user
  	@ests = EducationalEstablishment.all
  	@teachers = first_teachers
  	@exams = coming_exams
	  if user_signed_in?
	  	@teacher = current_teacher
		  @student = current_student
		  if @student
		  	@tests = Test.where(level: @student.level, is_done: false)
		  end
	  end
  end
end
