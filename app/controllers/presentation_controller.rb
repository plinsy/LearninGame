class PresentationController < ApplicationController
	include ApplicationHelper
  def team

  	@teacher = Teacher.find_by(email: current_user.email)
  	@student = Student.find_by(email: current_user.email)
  	@exams = coming_exams
    @tests = Test.where(is_done: false)
  end
end
