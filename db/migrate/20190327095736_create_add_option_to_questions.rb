class CreateAddOptionToQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :add_option_to_questions do |t|
    	t.belongs_to :option, index: true
    	t.belongs_to :question, index: true

      t.timestamps
    end
  end
end
