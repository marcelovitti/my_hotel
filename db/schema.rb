# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_10_140624) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "phone"
    t.string "cpf"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "Room_id", null: false
    t.integer "Client_id", null: false
    t.string "status"
    t.date "reservation_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Client_id"], name: "index_reservations_on_Client_id"
    t.index ["Room_id"], name: "index_reservations_on_Room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "room_number"
    t.string "room_type"
    t.float "price"
    t.integer "vacancies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "reservations", "Clients"
  add_foreign_key "reservations", "Rooms"
end
