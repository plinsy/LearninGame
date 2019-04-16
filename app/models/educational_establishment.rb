class EducationalEstablishment < ApplicationRecord
	has_many :students
	has_many :teachers	

	has_one_attached :logo # one-to-one relationship
  has_many_attached :uploads # one-to-many relationship

  validate :logo_format

	private

	def logo_format
	  return unless logo.attached?
	  return if logo.blob.content_type.start_with? 'image/'
	  logo.purge_later
	  errors.add(:logo, 'needs to be an image')
	end

end
