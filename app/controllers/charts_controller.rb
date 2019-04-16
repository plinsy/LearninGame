class ChartsController < ApplicationController
	include ChartsHelper

  def test_by_score
  	@tests = current_student.tests
    result = @tests.group(:score).count
    render json: [{name: 'Result', data: result}]
  end

  def test_by_subject
    @subjects = current_student.tests
    result = {}
    @subjects.all.map do |c|
      result[c.name] = c.title.count
    end
    render json: [{name: 'Count', data: result}]
  end
end