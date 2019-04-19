module HomeHelper
	def nos_etudiants
	end

	def nos_profs
		return [
			{
				firstname: 'Fenositraka',
				speciality: 'Prof de Math',
				logo_url: '../assets/fenositraka.jpg'
			},
			{
				firstname: 'Nancy',
				speciality: 'Prof de physique',
				logo_url: '../assets/nancy.jpg'
			},
			{
				firstname: 'Mialy',
				speciality: 'Prof de Français',
				logo_url: '../assets/mialy.jpg'
			},
			{
				firstname: 'Mahefa',
				speciality: "Prof d'EPS",
				logo_url: '../assets/zandry.jpg'
			}
		]
	end
end