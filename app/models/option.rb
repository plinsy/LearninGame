class Option < ApplicationRecord
	has_many :add_option_to_questions
	has_many :questions, through: :add_option_to_questions
end
