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

ActiveRecord::Schema.define(version: 20160625041146) do

  create_table "fotos", force: :cascade do |t|
    t.string   "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mascota", force: :cascade do |t|
    t.string   "id_Mas"
    t.string   "nombre"
    t.integer  "dueño"
    t.string   "entrada"
    t.string   "salida"
    t.boolean  "vacunas"
    t.string   "raza"
    t.integer  "edad"
    t.string   "estado"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
  end

  create_table "planes", force: :cascade do |t|
    t.string   "tipo"
    t.string   "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.string   "descripcion"
    t.string   "estado"
    t.integer  "mascota_id"
    t.integer  "usuario_id"
    t.date     "fecha"
    t.integer  "celular"
    t.date     "fecha_entrada"
    t.date     "fecha_salida"
    t.string   "nombre"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "tipo"
    t.integer  "telefono"
    t.string   "correo"
    t.string   "mascota"
    t.integer  "cedula"
    t.string   "estado"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "vacunas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "mascota_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
