class Address < ApplicationRecord
  belongs_to :patient, optional: true
  validates_presence_of :street, :city, :zip, :state

  def us_formatted
    "#{street} #{city}, #{state} #{zip}" 
  end

  def self.by_state(asc = true)
    direction = asc ? :asc : :desc
    order(state: direction)
  end
end
