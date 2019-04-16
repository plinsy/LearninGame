class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
 			t.belongs_to :teacher, index: true
    	t.text :content
      t.integer :points, default: 1

      t.timestamps
    end
  end
end
