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

ActiveRecord::Schema.define(version: 20150504232955) do

  create_table "contracts", force: :cascade do |t|
    t.integer  "contract_identity"
    t.string   "email"
    t.string   "contractor_name"
    t.string   "uuid"
    t.string   "contractor_phone"
    t.string   "course"
    t.string   "section"
    t.integer  "credit_hours"
    t.string   "semester"
    t.integer  "year"
    t.string   "instructor"
    t.string   "instructor_email"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "course_id"
    t.string   "course_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "courses", ["course_id"], name: "index_courses_on_course_id", unique: true

  create_table "honors", force: :cascade do |t|
    t.integer  "contract_id"
    t.string   "uid"
    t.string   "course_id"
    t.string   "prof_email"
    t.string   "semester"
    t.integer  "year"
    t.string   "grade"
    t.binary   "pdf"
    t.date     "dates"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "student_id"
    t.integer  "professor_id"
    t.integer  "corse_id"
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
  end

  add_index "honors", ["contract_id"], name: "index_honors_on_contract_id", unique: true
  add_index "honors", ["corse_id"], name: "index_honors_on_corse_id"
  add_index "honors", ["professor_id"], name: "index_honors_on_professor_id"
  add_index "honors", ["student_id"], name: "index_honors_on_student_id"

  create_table "pendings", force: :cascade do |t|
    t.integer  "contract_id"
    t.string   "uid"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "phoneNumber"
    t.string   "semester"
    t.string   "profName"
    t.string   "profEmail"
    t.string   "course_id"
    t.integer  "year"
    t.string   "present_date"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "grade"
    t.binary   "pdf"
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
  end

  add_index "pendings", ["contract_id"], name: "index_pendings_on_contract_id", unique: true

  create_table "professors", force: :cascade do |t|
    t.string   "profName"
    t.string   "profEmail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "professors", ["profEmail"], name: "index_professors_on_profEmail", unique: true

  create_table "students", force: :cascade do |t|
    t.string   "UID"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "phoneNumber"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "notes"
  end

  add_index "students", ["UID"], name: "index_students_on_UID", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
