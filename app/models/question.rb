class Question < ApplicationRecord
	belongs_to :teacher
	has_many :question_to_tests
	has_many :tests, through: :question_to_tests

	has_many :add_option_to_questions
	has_many :options, through: :add_option_to_questions
end
