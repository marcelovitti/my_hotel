class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.string :phone
      t.string :cpf

      t.timestamps
    end
  end
end
