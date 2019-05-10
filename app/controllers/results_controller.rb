class ResultsController < ApplicationController
	include ApplicationHelper
	include ResultsHelper
  before_action :authenticate_user!

  def index
    @student = current_student
    @results = @student.tests
  end

  def show
    @student = current_student
  	@result = current_test
  end
end