class EducationalEstablishmentController < ApplicationController
	def show
		@ed_est = EducationalEstablishment.find(params[:id]) 
	end
end
