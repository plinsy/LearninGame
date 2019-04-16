class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
    	t.string :title
    	t.belongs_to :student, index: true
    	t.belongs_to :test, index: true

      t.timestamps
    end
  end
end
