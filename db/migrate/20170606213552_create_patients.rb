class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :lastNameP
      t.string :firstNameP
      t.date :birthdate
      t.string :gender

      t.timestamps
    end
  end
end
