module ResultsHelper
	def current_student
		Student.find(params[:student_id])
	end

  def current_test
    current_student.tests.find(params[:id])
  end

	# def test_by_score
 #    bar_chart @results.group(:score).count, height: '500px', library: {
 #      title: {text: 'Test par score' },
 #      yAxis: {
 #        allowDecimals: false,
 #        title: {
 #          text: 'Nombre de Test'
 #        }
 #      },

 #      xAxis: {
 #        allowDecimals: false,
 #        title: {
 #          text: 'Score'
 #        }
 #      }
 #    }		
	# end

  def test_by_score
    bar_chart test_by_score_charts_path, height: '500px', library: {
      title: {text: 'Mes tests par score' },
      xAxis: {
        allowDecimals: false,
        title: {
          text: 'Points'
        }
      },

      yAxis: {
        allowDecimals: false,
        title: {
          text: 'Nombre de tests'
        }
      }
    }   
  end

  # def test_by_subject
  #   column_chart test_by_subject_charts_path, stacked: true, height: '500px', library: {
  #     title: {text: 'Results by subject', x: -20},
  #     yAxis: {
  #         title: {
  #             text: 'Count'
  #         }
  #     },
  #     xAxis: {
  #         title: {
  #             text: 'Test and subject'
  #         }
  #     }
  #   }
  # end

  
end
