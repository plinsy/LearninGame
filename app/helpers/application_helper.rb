module ApplicationHelper
	def coming_exams
  	exams = []
  	Exam.all.each do |exam|
  		exams << exam if exam.start_date > Time.now
  	end
    exams
  end
  def project_owners
		s = ['Front End', 'Back End', 'Full Stack']
		return [
			{
				firstname: 'Ranja',
				speciality: s[0],
				logo_url: '../assets/ranja.jpg'
			},
			{
				firstname: 'Princy',
				speciality: s[2],
				logo_url: '../assets/princy.jpg'
			},
			{
				firstname: 'Manda',
				speciality: s[1],
				logo_url: '../assets/manda.jpg'
			},
			{
				firstname: 'Sahaza',
				speciality: s[0],
				logo_url: '../assets/sahaza.jpg'
			},
			{
				firstname: 'Vaohita',
				speciality: s[1],
				logo_url: '../assets/Vaohita.jpg'
			}
		]
	end

	def current_student
		Student.find_by(email: current_user.email)
	end

	def current_teacher
		Teacher.find_by(email: current_user.email)
	end

	def first_teachers
		n = 0
		teachers = []
		Teacher.all.each do |teacher|
			teachers << teacher
			n += 1
			return teachers if n == 4
		end
	end

	def first_students
		n = 0
		students = []
		Student.all.each do |student|
			students << student
			n +=1
			return students if n == 4
		end
	end

	def students_images
		["../assets/rahjean.jpg", "../assets/mirindra.jpg", "../assets/herilala.jpg", "../assets/fenosoa.jpg"]
	end

	def establishments_images
		["../assets/sayna_logo.png", "../assets/saint-michel-logo.jpg", "../assets/saint-michel-itaosy-logo.jpeg", "../assets/saint-françois-xavier-logo.jpeg", "../assets/logoesca.png", "../assets/jules-ferry-logo.jpeg"]
	end
end
