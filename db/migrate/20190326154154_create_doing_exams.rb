class CreateDoingExams < ActiveRecord::Migration[5.2]
  def change
    create_table :doing_exams do |t|
    	t.belongs_to :exam, index: true
    	t.belongs_to :student, index: true
    	t.integer :total_points, default: 0
    	
      t.timestamps
    end
  end
end
