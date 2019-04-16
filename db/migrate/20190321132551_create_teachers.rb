class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :address
      t.string :city
      t.string :country
      t.belongs_to :educational_establishment, index: true
      t.belongs_to :subject, index: true
      t.string :degrees

      # from users
      t.string :email

      t.timestamps
    end
  end
end
