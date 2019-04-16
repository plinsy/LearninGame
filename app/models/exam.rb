class Exam < ApplicationRecord
	has_many :doing_exams
	has_many :students, through: :doing_exams
end