class DoingExamsController < ApplicationController
  include ApplicationHelper
  before_action :set_doing_exam, only: [:show, :edit, :update, :destroy]
  before_action :set_start_time, only: [:new, :create]

  # GET /doing_exams
  # GET /doing_exams.json
  def index
    @doing_exams = DoingExam.all
  end

  # GET /doing_exams/1
  # GET /doing_exams/1.json
  def show
  end

  # GET /doing_exams/new
  def new
    @user = current_user
    @doing_exam = DoingExam.new
  end

  # GET /doing_exams/1/edit
  def edit
  end

  # POST /doing_exams
  # POST /doing_exams.json
  def create
    @doing_exam = DoingExam.new(doing_exam_params)

    respond_to do |format|
      if @doing_exam.save
        format.html { redirect_to @doing_exam, notice: 'Doing exam was successfully created.' }
        format.json { render :show, status: :created, location: @doing_exam }
      else
        format.html { render :new }
        format.json { render json: @doing_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doing_exams/1
  # PATCH/PUT /doing_exams/1.json
  def update
    respond_to do |format|
      if @doing_exam.update(doing_exam_params)
        format.html { redirect_to @doing_exam, notice: 'Doing exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @doing_exam }
      else
        format.html { render :edit }
        format.json { render json: @doing_exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doing_exams/1
  # DELETE /doing_exams/1.json
  def destroy
    @doing_exam.destroy
    respond_to do |format|
      format.html { redirect_to doing_exams_url, notice: 'Doing exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doing_exam
      @doing_exam = DoingExam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doing_exam_params
      params.fetch(:doing_exam, {})
    end

    def set_start_time
      @start_time = @exam.start_date
    end

    def set_end_date
      @end_time = @start_date + (@exam.duration*3600)
    end
end
