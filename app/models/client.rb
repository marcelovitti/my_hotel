class Client < ApplicationRecord

  validates_presence_of :name
  validates_presence_of :cpf
  validates_presence_of :phone

end
