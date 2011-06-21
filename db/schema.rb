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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 66) do

  create_table "public_bodies", :force => true do |t|
    t.text   "name"
    t.text   "short_name"
    t.text   "request_email"
    t.text   "complaint_email"
    t.string "first_letter",    :null => false
  end

  add_index "public_bodies", ["first_letter"], :name => "index_public_bodies_on_first_letter"

end
