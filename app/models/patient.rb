class Patient < ApplicationRecord
  validates_presence_of :lastNameP
  validates_presence_of :firstNameP

  has_many :appointments, dependent: :destroy
  has_many :doctors, through: :appointments
end
