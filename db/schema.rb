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

ActiveRecord::Schema[7.1].define(version: 2024_02_11_110958) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "Priority", ["Low", "Medium", "High"]
  create_enum "Type", ["JobListing", "Applicant"]

  create_table "Task", id: :text, force: :cascade do |t|
    t.text "name", null: false
    t.text "reference", null: false
    t.boolean "isComplete", default: false, null: false
    t.enum "type", null: false, enum_type: ""Type""
    t.text "description", null: false
    t.enum "priority", null: false, enum_type: ""Priority""
    t.datetime "createdAt", precision: 3, default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "reference"
    t.boolean "is_complete"
    t.string "type"
    t.text "description"
    t.string "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
