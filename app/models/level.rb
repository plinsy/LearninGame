class Level < ApplicationRecord
	has_many :tests
	has_many :students
end
