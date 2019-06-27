class GamesController < ApplicationController
	include ApplicationHelper
	include GamesHelper
	before_action :authenticate_user!
	before_action :authenticate_student
	def index
		@games = Games.all
		@student = Student.find_by(email: current_user.email)
		@teacher = Teacher.find_by(email: current_user.email)
	end
	def show
		@game = Games.find(params[:id])
	end

	private
	def authenticate_student
		unless current_user.status == "Student" || current_user.status == "Teacher"
			redirect_to current_user,
			alert: "Bien essayer petit malin"
		end
	end
end
