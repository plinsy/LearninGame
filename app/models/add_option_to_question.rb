class AddOptionToQuestion < ApplicationRecord
	belongs_to :option
	belongs_to :question
end
