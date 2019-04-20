module UserHelper
	def current_student
		Student.find_by(email: current_user.email)
	end
	def current_teacher
		Teacher.find_by(email: current_user.email)
	end
end
