# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160902140203) do

  create_table "artworks", force: true do |t|
    t.string   "image"
    t.string   "register_number"
    t.string   "name"
    t.string   "material"
    t.string   "dimensions"
    t.string   "state_of_conservation"
    t.string   "observation"
    t.integer  "term_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "artworks", ["term_id"], name: "index_artworks_on_term_id"

  create_table "justification_terms", force: true do |t|
    t.integer  "justification_id"
    t.integer  "term_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "justification_terms", ["justification_id"], name: "index_justification_terms_on_justification_id"
  add_index "justification_terms", ["term_id"], name: "index_justification_terms_on_term_id"

  create_table "justifications", force: true do |t|
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms", force: true do |t|
    t.string   "legal_representer"
    t.string   "cpf_cnpj"
    t.string   "address"
    t.string   "contact"
    t.string   "role"
    t.string   "start_of_period"
    t.string   "end_of_period"
    t.string   "justification_description"
    t.string   "removing_way"
    t.string   "returning_way"
    t.string   "number_of_items"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
