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

ActiveRecord::Schema.define(version: 2020_08_17_162715) do

  create_table "appointments", force: :cascade do |t|
    t.integer "interviewee_id"
    t.integer "interviewer_id"
    t.integer "language_id"
    t.datetime "date"
    t.string "note"
    t.string "link"
    t.integer "difficulty"
    t.string "interview_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interviewees", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interviewers", force: :cascade do |t|
    t.string "name"
    t.integer "years_of_experience"
    t.string "current_role"
    t.string "current_company"
    t.float "interview_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "programming_languages"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end