class Reservation < ApplicationRecord
  belongs_to :Room
  belongs_to :Client

  has_many :reservation_consumables
  has_many :consumables, through: :reservation_consumables

end
