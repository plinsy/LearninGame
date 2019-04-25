# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ed = [
	'Sayna', 
	'Saint Michel Itaosy', 
	'Esca Antanimena', 
	'Saint François Xavier', 
	'Collège de France', 
	'Lycée Jule Ferry', 
	'Saint Michel Amparibe'
]

levels = ['6ème', '5ème', '4ème', '3ème', '2nde', '1ère']

subjects = ['Aléatoire', 'Maths / Mathematics', 'Algebra', 'Geometry', 'Science', 'Biology', 'Physics', 'Chemistry', 'Geography', 'History', 'Citizenship', 'Physical Education (P.E)', 'Business Studies', 'Home Economics', 'Art', 'Music']

degrees = ["Associate's degree", "Bachelor's degree", "Master's degree", "Doctoral degree", "Profesional degree"]

users = []

4.times do |nbr|
	use = Faker::Internet.username
	users << {
		email: "#{use}@yopmail.com",
		username: use,
		password: "000000",
		password_confirmation: "000000"
	}
end

ed.each do |ed|
	EducationalEstablishment.create(
		title: ed
	)
end

subjects.each do |subject|
	Subject.create(title: subject)
end

levels.each do |level|
	Level.create(title: level)
end

degrees.each do |degree|
	Degree.create(title: degree)
end

emails = [
	"plinsy@yopmail.com",
	"ranja@yopmail.com",
	"sahaza@yopmail.com",
	"vaohita@yopmail.com",
	"manda@yopmail.com"
]

usernames = [
	"Linx",
	"Ranja",
	"Sahaza",
	"Vaohita",
	"Manda"
]

passwords = [
	"040404",
	"050505",
	"060606",
	"070707",
	"050505"
]
print "Creating admins..."
5.times do |n|	
		User.create(
		email: emails[n],
		username: usernames[n],
		password: passwords[n],
		password_confirmation: passwords[n],
		status: 'Admin',
		is_admin: true
	)
	print "."
end

print "\nCreating users..."
users.length.times do |user_index|
		
	u = User.create(users[user_index])
	print "."

	if user_index.odd?
		
		cheese = Teacher.create(
			first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			date_of_birth: Time.now - (50 * 365 * 24 * 3600),
			address: Faker::Address.street_address,
			city: Faker::Address.city,
			country: Faker::Address.country,
			educational_establishment: EducationalEstablishment.all[rand(EducationalEstablishment.all.length).to_i],
			subject: Subject.all[rand(Subject.all.length).to_i],
			degrees: "Master's degree",
			email: u.email
		)
		u.update(status: "Teacher")
		print "T"
		print "\nCreating tests..."
		t = Test.new(
			teacher: cheese,
			title: Faker::Book.title,
			level: Level.all[(rand(Level.all.length).to_i)],
			subject: Subject.all[rand(Subject.all.length).to_i]
		)

		t.save

		10.times do |index|
			quest = Question.create(
				teacher: cheese,
				content: Faker::Lorem.question,
				points: rand(4)
			)
			print "Q"
			4.times do |id|
				if id == rand(3)
					opt = Option.create(
						content: Faker::Lorem.word,
						status: "Correct"
					)
				else
					opt = Option.create(
						content: Faker::Lorem.word
					)
				end
				print "O"
				AddOptionToQuestion.create(question: quest, option: opt)
			end
			QuestionToTest.create(test: t, question: quest)
			print "T"
		end

	else

		student = Student.create(
			first_name: Faker::Name.first_name,
			last_name: Faker::Name.last_name,
			date_of_birth: Time.now - (15 * 365 * 24 * 3600),
			address: Faker::Address.street_address,
			city: Faker::Address.city,
			country: Faker::Address.country,
			educational_establishment: EducationalEstablishment.all[rand(EducationalEstablishment.all.length).to_i],
			subject: Subject.all[rand(Subject.all.length).to_i],
			level: Level.all[(rand(Level.all.length).to_i)],
			email: u.email
		)
		u.update(status: "Student")
		print "S"

	end
end