class Games < ApplicationRecord
	validates :title, presence: true
	validates :url, presence: true
	validates :image, presence: true
end
