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

ActiveRecord::Schema.define(version: 20150522120125) do

  create_table "jobs", force: :cascade do |t|
    t.string   "documentid"
    t.string   "jobtitle"
    t.string   "organizationname"
    t.string   "agencysubelement"
    t.string   "salarymin"
    t.string   "salarymax"
    t.string   "salarybasis"
    t.date     "startdate"
    t.date     "enddate"
    t.string   "whomayapplytext"
    t.string   "payplan"
    t.string   "series"
    t.string   "grade"
    t.string   "workschedule"
    t.string   "worktype"
    t.string   "locations"
    t.string   "announcementnumber"
    t.text     "jobsummary"
    t.string   "applyonlineurl"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
