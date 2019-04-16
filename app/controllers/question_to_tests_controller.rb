class QuestionToTestsController < ApplicationController
  before_action :set_question_to_test, only: [:show, :edit, :update, :destroy]

  # GET /question_to_tests
  # GET /question_to_tests.json
  def index
    @question_to_tests = QuestionToTest.all
  end

  # GET /question_to_tests/1
  # GET /question_to_tests/1.json
  def show
  end

  # GET /question_to_tests/new
  def new
    @question_to_test = QuestionToTest.new
  end

  # GET /question_to_tests/1/edit
  def edit
  end

  # POST /question_to_tests
  # POST /question_to_tests.json
  def create
    @question_to_test = QuestionToTest.new(question_to_test_params)

    respond_to do |format|
      if @question_to_test.save
        format.html { redirect_to @question_to_test, notice: 'Question to test was successfully created.' }
        format.json { render :show, status: :created, location: @question_to_test }
      else
        format.html { render :new }
        format.json { render json: @question_to_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_to_tests/1
  # PATCH/PUT /question_to_tests/1.json
  def update
    respond_to do |format|
      if @question_to_test.update(question_to_test_params)
        format.html { redirect_to @question_to_test, notice: 'Question to test was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_to_test }
      else
        format.html { render :edit }
        format.json { render json: @question_to_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_to_tests/1
  # DELETE /question_to_tests/1.json
  def destroy
    @question_to_test.destroy
    respond_to do |format|
      format.html { redirect_to question_to_tests_url, notice: 'Question to test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_to_test
      @question_to_test = QuestionToTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_to_test_params
      params.fetch(:question_to_test, {})
    end
end
