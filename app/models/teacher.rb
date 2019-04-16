class Teacher < ApplicationRecord
	belongs_to :educational_establishment
	belongs_to :subject
	has_many :students, through: :educational_establishment

	validates :email, uniqueness: true

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :date_of_birth, presence: true
	validates :country, presence: true
	validates :degrees, presence: true

	# has_many_attached :files
	has_many :tests
end
