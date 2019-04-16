class Test < ApplicationRecord
	belongs_to :teacher
	belongs_to :level
	belongs_to :subject

	has_many :question_to_tests
	has_many :questions, through: :question_to_tests
	has_many :doing_tests
	has_many :students, through: :doing_tests

	has_many :results
end
