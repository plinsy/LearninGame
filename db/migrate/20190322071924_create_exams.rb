class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
    	t.string :title
    	t.belongs_to :test, index: true
    	t.belongs_to :student, index: true
    	t.datetime :start_date
    	t.integer :duration

      t.timestamps
    end
  end
end
