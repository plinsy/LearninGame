class Subject < ApplicationRecord
	has_many :tests
	has_many :students
	has_many :teachers
end
