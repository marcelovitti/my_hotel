class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :Room, null: false, foreign_key: true
      t.references :Client, null: false, foreign_key: true
      t.string :status
      t.date :reservation_date

      t.timestamps
    end
  end
end
