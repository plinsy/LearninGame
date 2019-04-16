module ExamsHelper
	def current_exam
		Exam.find(params[:id])
	end
end
