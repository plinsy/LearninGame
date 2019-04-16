module TeachersHelper
	def current_teacher
		Teacher.find(params[:id])
	end

		# Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = current_teacher
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:teacher).permit(:first_name, :last_name, :date_of_birth, :address, :city)
    end

    def authenticate_teacher
      if @teacher.email != current_user.email
        redirect_to root_path,
        alert: "You're not authorized to access this page"   
      end   
    end 
end
