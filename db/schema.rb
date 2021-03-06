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

ActiveRecord::Schema.define(version: 20170801053007) do

  create_table "tickets", force: :cascade do |t|
    t.string "company"
    t.string "serial"
    t.string "machine_location"
    t.string "contact_person"
    t.string "contract_number"
    t.text "problem_description"
    t.time "avoid_time"
    t.time "office_closing_time"
    t.text "special_instructions"
    t.string "ticket_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "avoid_time_end"
  end

end
