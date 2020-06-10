class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :room_number
      t.string :room_type
      t.float :price
      t.integer :vacancies

      t.timestamps
    end
  end
end
