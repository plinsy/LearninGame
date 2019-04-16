class CreateDoingTests < ActiveRecord::Migration[5.2]
  def change
    create_table :doing_tests do |t|
    	t.belongs_to :student, index: true
    	t.belongs_to :test, index: true
    	t.integer :total_points, default: 0

      t.timestamps
    end
  end
end
