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

ActiveRecord::Schema.define(version: 20140904231223) do

  create_table "areas_academicas", force: true do |t|
    t.integer  "institucion_id"
    t.string   "nombre"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "areas_academicas", ["institucion_id"], name: "institucion_id", using: :btree

  create_table "carreras", force: true do |t|
    t.integer  "area_academica"
    t.string   "nombre"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instituciones", force: true do |t|
    t.string   "nombre"
    t.string   "siglas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
