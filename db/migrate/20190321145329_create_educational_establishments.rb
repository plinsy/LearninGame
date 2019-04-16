class CreateEducationalEstablishments < ActiveRecord::Migration[5.2]
  def change
    create_table :educational_establishments do |t|
    	t.string :title

      t.timestamps
    end
  end
end
