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

ActiveRecord::Schema.define(version: 20150610193358) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industry_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "professional_association_id"
    t.integer  "service_provider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: :cascade do |t|
    t.boolean  "primary"
    t.integer  "project_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "cost"
  end

  create_table "professional_associations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "service_provider_id"
    t.string   "name"
    t.integer  "space_type_id"
    t.integer  "category_id"
    t.float    "cost_amount"
    t.string   "street_address_1"
    t.string   "street_address_2"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.text     "description"
    t.date     "completed_on"
    t.string   "cost_amount_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cost"
  end

  create_table "service_providers", force: :cascade do |t|
    t.string   "email",                         default: "", null: false
    t.string   "encrypted_password",            default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                 default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "street_address_2"
    t.text     "company_description"
    t.string   "company_email_address"
    t.string   "company_phone_number"
    t.string   "awards"
    t.string   "last_name"
    t.string   "cell_number"
    t.string   "company_name"
    t.string   "street_address_1"
    t.string   "city"
    t.string   "zip_code"
    t.integer  "industry_type_id"
    t.string   "industry_experience"
    t.string   "certificates"
    t.string   "first_name"
    t.string   "better_business_bureau_rating"
    t.string   "photo_face"
    t.string   "photo_banner"
    t.string   "website"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "space_type_id"
    t.string   "state"
    t.string   "personal_email_address"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "service_providers", ["email"], name: "index_service_providers_on_email", unique: true
  add_index "service_providers", ["reset_password_token"], name: "index_service_providers_on_reset_password_token", unique: true
  add_index "service_providers", ["space_type_id"], name: "index_service_providers_on_space_type_id"

  create_table "space_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
