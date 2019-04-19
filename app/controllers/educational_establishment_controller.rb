class EducationalEstablishmentController < ApplicationController
	include ApplicationHelper
	def show
		@user = current_user
		@ed_est = EducationalEstablishment.find(params[:id]) 
	end
end
