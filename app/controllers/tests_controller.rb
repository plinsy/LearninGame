class TestsController < ApplicationController
  include TestsHelper
  before_action :authenticate_user!
  before_action :authenticate_teacher, only: [:new, :create]
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
  end

  # GET /tests/1
  # GET /tests/1.json
  def show
    @teacher = current_teacher
  end

  # GET /tests/new
  def new
    @teacher = current_teacher
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    puts "="*70

    @test = Test.new(
      teacher: current_teacher,
      title: params[:title]
    )
    @test.level = Level.where(title: params[:level]).first
    @test.subject = Subject.where(title: params[:subject]).first

    unless @test.save
      render :new,
      alert: @test.errors.full_messages
    end

    filter_params

    # create_questions

    respond_to do |format|
      if @opvalues.length != 0 && @options.length != 0 && @points.length != 0 && @questions.length != 0
        create_questions
        format.html { redirect_to teacher_test_path(current_teacher.id, @test.id), notice: 'Test was successfully created.' }
        format.json { render :show, status: :created, location: @test }
      else
        format.html { render :new, alert: "All inputs are required, please check your test" }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end

    puts "="*70
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to teacher_test(current_teacher.id, @test.id), notice: 'Test was successfully updated.' }
        format.json { render :show, status: :ok, location: @test }
      else
        format.html { render :edit }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url, notice: 'Test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.permit()
    end
end
