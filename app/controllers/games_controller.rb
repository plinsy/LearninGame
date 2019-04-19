class GamesController < ApplicationController
	include ApplicationHelper
	def index
		@student = Student.find_by(email: current_user.email)
	end
end
