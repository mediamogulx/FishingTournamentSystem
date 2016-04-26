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

ActiveRecord::Schema.define(version: 20160426045506) do

  create_table "angler_participations", force: :cascade do |t|
    t.integer "TournamentID", null: false
    t.integer "AnglerID",     null: false
  end

  create_table "angler_photos", force: :cascade do |t|
    t.integer "AnglerID", null: false
    t.integer "PhotoID",  null: false
  end

  create_table "anglers", force: :cascade do |t|
    t.integer  "AnglerID"
    t.text     "Type",          null: false
    t.string   "FirstName",     null: false
    t.string   "MI"
    t.string   "LastName",      null: false
    t.string   "Email",         null: false
    t.integer  "FishingClubID"
    t.text     "CreateDt"
    t.text     "LastUpdateDt"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "anglers", ["AnglerID"], name: "index_anglers_on_AnglerID"

  create_table "beneficiaries", force: :cascade do |t|
    t.integer "BeneficiaryID"
    t.string  "Name",          null: false
    t.text    "Description"
    t.text    "Website"
    t.text    "CreateDt"
    t.text    "LastUpdateDt"
  end

  create_table "beneficiary_photos", force: :cascade do |t|
    t.integer "BeneficiaryID", null: false
    t.integer "PhotoID",       null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer "CategoryID"
    t.integer "TournamentID", null: false
    t.integer "AnglerID"
    t.integer "PrizeID"
    t.integer "FishID"
    t.string  "Name"
    t.text    "Description"
    t.text    "CreateDt"
    t.text    "LastUpdateDt"
  end

  create_table "fish", force: :cascade do |t|
    t.integer  "FishID"
    t.integer  "TournamentID", null: false
    t.integer  "AnglerID",     null: false
    t.integer  "CategoryID",   null: false
    t.integer  "PrizeID"
    t.string   "Name"
    t.text     "Description"
    t.integer  "PhotoID"
    t.text     "CreateDt"
    t.text     "LastUpdateDt"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "fishing_club_photos", force: :cascade do |t|
    t.integer "FishingClubID", null: false
    t.integer "PhotoID",       null: false
  end

  create_table "fishing_clubs", force: :cascade do |t|
    t.integer "FishingClubID"
    t.string  "Name",          null: false
    t.text    "Description"
    t.text    "Website"
    t.text    "CreateDt"
    t.text    "LastUpdateDt"
  end

  create_table "organizer_photos", force: :cascade do |t|
    t.integer "OrganizerID", null: false
    t.integer "PhotoID",     null: false
  end

  create_table "organizers", force: :cascade do |t|
    t.integer "OrganizerID"
    t.integer "FishingClubID"
    t.string  "Name",          null: false
    t.text    "Description"
    t.text    "Website"
    t.text    "CreateDt"
    t.text    "LastUpdateDt"
  end

  create_table "photos", force: :cascade do |t|
    t.integer "PhotoID"
    t.binary  "Photo",        null: false
    t.text    "Description"
    t.text    "CreateDt"
    t.text    "LastUpdateDt"
  end

  create_table "prizes", force: :cascade do |t|
    t.integer "PrizeID"
    t.integer "TournamentID", null: false
    t.integer "AnglerID"
    t.integer "CategoryID"
    t.text    "Type"
    t.text    "Description"
    t.integer "PhotoID"
    t.text    "CreateDt"
    t.text    "LastUpdateDt"
  end

  create_table "sponsor_participations", force: :cascade do |t|
    t.integer "SponsorID",    null: false
    t.integer "TournamentID", null: false
  end

  create_table "sponsor_photos", force: :cascade do |t|
    t.integer "SponsorID", null: false
    t.integer "PhotoID",   null: false
  end

  create_table "sponsors", force: :cascade do |t|
    t.integer "SponsorID"
    t.string  "Type"
    t.string  "Name",         null: false
    t.text    "Description"
    t.text    "Website"
    t.text    "CreateDt"
    t.text    "LastUpdateDt"
  end

  create_table "tournament_photos", force: :cascade do |t|
    t.integer "TournamentID", null: false
    t.integer "PhotoID",      null: false
  end

  create_table "tournaments", force: :cascade do |t|
    t.integer  "TournamentID"
    t.text     "Name",               null: false
    t.text     "Description"
    t.text     "StartDt",            null: false
    t.text     "EndDt",              null: false
    t.text     "CaptainsMeetingDt"
    t.string   "CaptainsMeetingLoc"
    t.string   "EntryFee",           null: false
    t.integer  "BeneficiaryID"
    t.integer  "OrganizerID"
    t.string   "WeighInLoc"
    t.string   "BanquetLoc"
    t.text     "BanquetStartDt"
    t.text     "BanquentEndDt"
    t.text     "RainDt"
    t.text     "CreateDt"
    t.text     "LastUpdateDt"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "tournaments", ["TournamentID"], name: "index_tournaments_on_TournamentID"

end
