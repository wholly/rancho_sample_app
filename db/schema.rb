# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100317120007) do

  create_table "contents", :force => true do |t|
    t.text     "body"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.decimal  "lat",        :precision => 15, :scale => 10
    t.decimal  "lng",        :precision => 15, :scale => 10
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "pincode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rancho_content_pointers", :force => true do |t|
    t.integer  "content_id"
    t.string   "content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rancho_content_pointers", ["content_id"], :name => "index_rancho_content_pointers_on_content_id"
  add_index "rancho_content_pointers", ["content_type"], :name => "index_rancho_content_pointers_on_content_type"

  create_table "rancho_indexes", :force => true do |t|
    t.integer "rancho_content_pointer_id"
    t.integer "rancho_word_id"
    t.integer "position"
    t.decimal "lat",                       :precision => 15, :scale => 10
    t.decimal "lng",                       :precision => 15, :scale => 10
  end

  add_index "rancho_indexes", ["rancho_content_pointer_id"], :name => "index_rancho_indexes_on_rancho_content_pointer_id"
  add_index "rancho_indexes", ["rancho_word_id", "rancho_content_pointer_id"], :name => "index_rancho_indexes_on_rancho_word_id_and_rancho_content_pointer_id"
  add_index "rancho_indexes", ["rancho_word_id"], :name => "index_rancho_indexes_on_rancho_word_id"

  create_table "rancho_words", :force => true do |t|
    t.string   "stem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rancho_words", ["stem"], :name => "index_rancho_words_on_stem"

end
