class UserController < ApplicationController
	include ApplicationHelper
	before_action :authenticate_user!
	def show
		@student = Student.find_by(email: current_user.email)
		@teacher = Teacher.find_by(email: current_user.email)
	end
end
