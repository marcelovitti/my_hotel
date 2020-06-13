class ReservationConsumable < ApplicationRecord
  belongs_to :reservation
  belongs_to :consumable
end
