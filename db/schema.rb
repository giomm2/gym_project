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

ActiveRecord::Schema.define(version: 20181101141916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_exercises", force: :cascade do |t|
    t.bigint "exercise_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_exercises_on_category_id"
    t.index ["exercise_id"], name: "index_category_exercises_on_exercise_id"
  end

  create_table "exercise_plans", force: :cascade do |t|
    t.bigint "plan_id"
    t.bigint "exercise_id"
    t.integer "number_day"
    t.string "weight"
    t.integer "repetition"
    t.integer "rest_time"
    t.integer "number_series"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_exercise_plans_on_exercise_id"
    t.index ["plan_id"], name: "index_exercise_plans_on_plan_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active", default: true
    t.string "url_video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "objectives", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.bigint "objective_id"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.integer "number_of_weeks"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["objective_id"], name: "index_plans_on_objective_id"
  end

  add_foreign_key "category_exercises", "categories"
  add_foreign_key "category_exercises", "exercises"
  add_foreign_key "exercise_plans", "exercises"
  add_foreign_key "exercise_plans", "plans"
  add_foreign_key "plans", "objectives"
end
