class Consumable < ApplicationRecord

  has_many :reservation_consumables
  has_many :reservations, through: :reservation_consumables

end
