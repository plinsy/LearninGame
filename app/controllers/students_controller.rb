class StudentsController < ApplicationController
  include StudentsHelper
  before_action :authenticate_user!
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_student, only: [:edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    @student.country = params.require(:country)
    @student.educational_establishment = EducationalEstablishment.where(title: params.require(:educational_establishment)).first
    @student.subject = Subject.find_by(title: params.require(:subject))
    @student.level = Level.find_by(title: params.require(:level))
    @student.email = current_user.email

    respond_to do |format|
      if @student.save
        current_user.update(status: "Student")
        
        format.html { redirect_to root_path, notice: 'Student was successfully created!' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new, alert: @student.errors.full_messages }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit, alert: @student.errors.full_messages }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end
