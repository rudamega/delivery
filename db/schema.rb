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

ActiveRecord::Schema.define(version: 2020_07_21_200459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cliente_finals", force: :cascade do |t|
    t.string "name"
    t.string "nro"
    t.string "direccion"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "latitud"
    t.string "longitud"
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "monto"
    t.string "cobro"
    t.string "recibido_por"
    t.string "status"
    t.bigint "vendedors_id", null: false
    t.bigint "cliente_finals_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_finals_id"], name: "index_pedidos_on_cliente_finals_id"
    t.index ["vendedors_id"], name: "index_pedidos_on_vendedors_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vendedors", force: :cascade do |t|
    t.string "name"
    t.string "ruc"
    t.string "nro"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pedidos", "cliente_finals", column: "cliente_finals_id"
  add_foreign_key "pedidos", "vendedors", column: "vendedors_id"
end
