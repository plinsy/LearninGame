class LogoController < ApplicationController
	def create
    @educational_establishment = EducationalEstablishment.find(params[:educational_establishment_id])
    @educational_establishment.logo.attach(params[:logo])
    redirect_to(root_path)
  end

  def destroy
  	@educational_establishment.logo.purge
  end
end
