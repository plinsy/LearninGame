class TeachersController < ApplicationController
  include ApplicationHelper
  include TeachersHelper
  before_action :authenticate_user!
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_teacher, only: [:show, :edit, :update, :destroy]
  # GET /teachers
  # GET /teachers.json
  def index
    @teachers = Teacher.all
  end

  # GET /teachers/1
  # GET /teachers/1.json
  def show
  end

  # GET /teachers/new
  def new
    @teacher = Teacher.new
  end

  # GET /teachers/1/edit
  def edit
  end

  # POST /teachers
  # POST /teachers.json
  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.country = params.require(:country)
    @teacher.educational_establishment = EducationalEstablishment.where(title: params.require(:educational_establishment)).first
    @teacher.subject = Subject.find_by(title: params.require(:subject))
    @teacher.degrees = params.require(:degrees)
    @teacher.email = current_user.email

    respond_to do |format|
      if @teacher.save
        current_user.update(status: "Teacher")
        format.html { redirect_to @teacher, notice: 'Teacher was successfully created.' }
        format.json { render :show, status: :created, location: @teacher }
      else
        format.html { render :new, alert: @teacher.errors }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachers/1
  # PATCH/PUT /teachers/1.json
  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to @teacher, notice: 'Teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher }
      else
        format.html { render :edit, alert: @teacher.errors }
        format.json { render json: @teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers/1
  # DELETE /teachers/1.json
  def destroy
    @teacher.destroy
    respond_to do |format|
      format.html { redirect_to teachers_url, notice: 'Teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
end