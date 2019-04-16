class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
    	t.string :content
    	t.string :status, default: "None"

      t.timestamps
    end
  end
end
