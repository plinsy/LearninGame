class Student < ApplicationRecord
	belongs_to :level
	belongs_to :subject

	validates :email, uniqueness: true
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :date_of_birth, presence: true
	validates :country, presence: true

	belongs_to :educational_establishment
	has_many :teachers, through: :educational_establishment
	
	has_many :doing_tests
	has_many :tests, through: :doing_tests

	has_many :doing_exams
	has_many :exams, through: :doing_exams

	has_many :results

	has_many_attached :uploads # one-to-many relationship
end
