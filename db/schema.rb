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

ActiveRecord::Schema.define(version: 20140910153723) do

  create_table "areas_academicas", force: true do |t|
    t.integer  "institucion_id", null: false
    t.string   "nombre"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "areas_academicas", ["institucion_id"], name: "institucion_id", using: :btree

  create_table "carreras", force: true do |t|
    t.integer  "area_academica_id", null: false
    t.string   "nombre"
    t.string   "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carreras", ["area_academica_id"], name: "area_academica_id", using: :btree

  create_table "evaluaciones", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instituciones", force: true do |t|
    t.string   "nombre"
    t.string   "siglas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planes_evaluaciones", force: true do |t|
    t.integer  "planificacion_id", null: false
    t.integer  "evaluacion_id"
    t.date     "fecha"
    t.integer  "puntuacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planificaciones", force: true do |t|
    t.integer  "semestre_id",          null: false
    t.integer  "carrera_id",           null: false
    t.integer  "unidad_curricular_id", null: false
    t.integer  "seccion_id",           null: false
    t.integer  "lapsos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "planificaciones", ["carrera_id"], name: "carrera_id", using: :btree
  add_index "planificaciones", ["seccion_id"], name: "seccion_id", using: :btree
  add_index "planificaciones", ["semestre_id"], name: "periodo_lectivo_id", using: :btree
  add_index "planificaciones", ["semestre_id"], name: "semestre_id", using: :btree
  add_index "planificaciones", ["unidad_curricular_id"], name: "unidad_curricular_id", using: :btree

  create_table "secciones", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semestres", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidades_curriculares", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
