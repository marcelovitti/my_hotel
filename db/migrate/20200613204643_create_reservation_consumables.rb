class CreateReservationConsumables < ActiveRecord::Migration[6.0]
  def change
    create_table :reservation_consumables do |t|
      t.references :reservation, null: false, foreign_key: true
      t.references :consumable, null: false, foreign_key: true

      t.timestamps
    end
  end
end
