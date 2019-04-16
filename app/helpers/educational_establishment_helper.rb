module EducationalEstablishmentHelper
	def educational_establishment_params
		params.require(:educational_establishment).permit(:title, :logo, uploads: [])
	end
end
