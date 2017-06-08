class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :lastNameD
      t.string :firstNameD
      t.string :specialty

      t.timestamps
    end
  end
end
