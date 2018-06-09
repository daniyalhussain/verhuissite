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

ActiveRecord::Schema.define(version: 20170802172345) do

  create_table "aanvraags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "adres_a"
    t.string "huisnummer_a"
    t.string "plaats_a"
    t.string "postcode_a"
    t.string "adres_b"
    t.string "huisnummer_b"
    t.string "plaats_b"
    t.string "postcode_b"
    t.string "adres_c"
    t.string "huisnummer_c"
    t.string "plaats_c"
    t.string "postcode_c"
    t.date "datumvan"
    t.date "datumtot"
    t.boolean "filled"
    t.string "status"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email"
    t.string "password_digest"
    t.string "naam"
    t.string "achternaam"
    t.string "telefoon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
