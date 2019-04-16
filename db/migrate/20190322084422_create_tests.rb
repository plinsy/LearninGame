class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.belongs_to :teacher, index: true
    	t.string :title
    	t.belongs_to :level, index: true
    	t.belongs_to :subject, index: true
    	t.integer :score, default: 0
      t.boolean :is_done, default: false

      t.timestamps
    end
  end
end