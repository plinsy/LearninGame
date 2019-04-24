module UserHelper
	def current_student
		Student.find_by(email: current_user.email)
	end
	def current_teacher
		Teacher.find_by(email: current_user.email)
	end
	def user
		return current_user if current_user.status == "Guest"
		return current_student ? current_student : current_teacher
	end
	def edit_url
		return current_student ? edit_student_path(current_student) : edit_teacher_path(current_teacher)
	end
end
