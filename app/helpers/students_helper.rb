module StudentsHelper
	def current_student
		Student.find(params[:id])
	end

	# Use callbacks to share common setup or constraints between actions.
  def set_student
    @student = Student.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def student_params
    params.require(:student).permit(:first_name, :last_name, :date_of_birth, :address, :city)
  end

  def authenticate_student
    if current_student != Student.find_by(email: current_user.email)
      redirect_to root_path,
      alert: "Bien essayer petit malin"
      return false
    end
    return true
  end

  def tests_won
    tests_won = []
    current_student.tests.each do |test|
      tests_won << test if test.score >= test.questions.length
    end
    tests_won
  end

  def subject_purcentage(subject)
    subject_purcentage = 0
    current_student.tests.all.each do |test|
      subject_purcentage += 1 if test.subject == subject
    end
    return subject_purcentage*100
  end

  def authenticate_guest
    unless current_user.status == "Guest"
      redirect_to root_path,
      alert: "Bien essayer petit malin"
    end
  end
end