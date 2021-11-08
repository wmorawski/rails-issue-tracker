# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_08_180223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "issue_statuses", force: :cascade do |t|
    t.string "name"
    t.boolean "marks_as_closed", default: false
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "issues", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "due_date"
    t.bigint "author_id"
    t.bigint "assignee_id"
    t.bigint "issue_status_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assignee_id"], name: "index_issues_on_assignee_id"
    t.index ["author_id"], name: "index_issues_on_author_id"
    t.index ["issue_status_id"], name: "index_issues_on_issue_status_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "avatar_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "idx_user_email", unique: true
  end

  add_foreign_key "issues", "issue_statuses"
end