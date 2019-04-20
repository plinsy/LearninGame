class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
    	t.string :title
    	t.string :url
    	t.string :image
    	t.text :css
    	t.text :js
    	t.text :other_link
    	
      t.timestamps
    end
  end
end
