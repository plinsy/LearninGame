class CreateQuestionToTests < ActiveRecord::Migration[5.2]
  def change
    create_table :question_to_tests do |t|
    	t.belongs_to :question, index: true
    	t.belongs_to :test, index: true

      t.timestamps
    end
  end
end
