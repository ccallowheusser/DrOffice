class Doctor < ApplicationRecord
  validates_presence_of :firstNameD
  validates_presence_of :lastNameD

  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
end
