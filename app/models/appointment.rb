class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, foreign_key: true
      t.belongs_to :patient, foreign_key: true
      t.string :description
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
