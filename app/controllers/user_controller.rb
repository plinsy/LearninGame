class UserController < ApplicationController
	include ApplicationHelper
	def show
		@student = Student.find_by(email: current_user.email)
		@teacher = Teacher.find_by(email: current_user.email)
	end
end
