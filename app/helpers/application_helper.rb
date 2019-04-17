module ApplicationHelper
	def coming_exams
  	exams = []
  	Exam.all.each do |exam|
  		exams << exam if exam.start_date > Time.now
  	end
    exams
  end
end
