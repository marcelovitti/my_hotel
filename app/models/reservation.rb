class Reservation < ApplicationRecord
  belongs_to :Room
  belongs_to :Client
end
