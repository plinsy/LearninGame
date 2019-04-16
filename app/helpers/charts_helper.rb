module ChartsHelper
	def current_student
		Student.find_by(email: current_user.email)
	end
end
