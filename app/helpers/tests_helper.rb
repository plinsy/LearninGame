module TestsHelper
	def current_test
		Test.find(params[:id])
	end

	def current_teacher
		Teacher.find(params[:teacher_id])
	end

	def authenticate_teacher
		if current_user.status != "Teacher"
			redirect_to root_path,
			alert: "You are not allowed to access this page"
		end
	end

	def filter_params
		@questions = []
		@points = []
		@options = []
		@opvalues = []
		params.each do |key, value|
			if key.include? "content"
				@questions << {"#{key}": value}
			elsif key.include? "points"
				@points << {"#{key}": value}
			elsif key.include? "opt"
				@options << {"#{key}": value}
			elsif key.include? "opvalue"
				@opvalues << {"#{key}": value}
			end
		end
	end

	def create_questions
		@questions.length.times do |q|
			question = Question.create(
				teacher_id: current_teacher.id,
				content: valueof(@questions[q]),
				points: valueof(@points[q])
			)

			#Create options
			4.times do |o|
				option = Option.new(
					content: valueof(@options[q*4 + o]),
				)
				option.status = "Correct" if optionOK(q*4 + o) # q*4 + o = optionID in @options

				if o == 4 && !optionOK(q*4 + o) && !optionOK(q*4 + o - 1) && !optionOK(q*4 + o - 2) && !optionOK(q*4 + o - 3)
					render :new,
					alert: "Check the result, you have to specify the right answer"
				else
					option.save
				end

				#Add options to question
				AddOptionToQuestion.create(question_id: question.id, option_id: option.id)
			end

			#Add Question to Test
			qtt = QuestionToTest.new(test_id: @test.id, question_id: question.id)
			unless qtt.save
				render :new, alert: qtt.errors.full_messages
			end
		end
	end

	def valueof(item)
		item.each do |k, v|
			return v
		end
	end

	def keyof(item)
		item.each do |k, v|
			return k			
		end
	end

	def optionOK(ind)
		@opvalues.each do |opvalue|
			opvalue.each do |key, value|
				if value.to_s == keyof(@options[ind]).to_s # if The option correspond to an optvalue so it is true
					return true 
				else
					next
				end
			end
		end
		return false
	end
end