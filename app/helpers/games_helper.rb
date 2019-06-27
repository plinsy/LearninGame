module GamesHelper
	def you_had_enough_points
		# current_student.score
	end

	def current_student
		Student.find_by(email: current_user.email)
	end
end
