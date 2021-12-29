# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 202112271458110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "geral_marcas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geral_nome_carros", force: :cascade do |t|
    t.integer "marca_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geral_pessoas", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "email"
    t.string "telefone"
    t.integer "user_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geral_veiculo_pessoas", force: :cascade do |t|
    t.integer "veiculo_id"
    t.integer "pessoa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geral_veiculos", force: :cascade do |t|
    t.integer "name_carro_id"
    t.integer "ano"
    t.string "placa"
    t.string "renavam"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
