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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 1) do

  create_table "alltime_standing_entries", :force => true do |t|
    t.integer  "alltime_standing_id", :null => false
    t.integer  "team_id",             :null => false
    t.integer  "pos"
    t.integer  "played"
    t.integer  "won"
    t.integer  "lost"
    t.integer  "drawn"
    t.integer  "goals_for"
    t.integer  "goals_against"
    t.integer  "pts"
    t.integer  "recs"
    t.string   "comments"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "alltime_standings", :force => true do |t|
    t.string   "key",        :null => false
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "assocs", :force => true do |t|
    t.string   "key",                                 :null => false
    t.string   "title",                               :null => false
    t.integer  "since"
    t.string   "web"
    t.integer  "country_id"
    t.boolean  "national",         :default => false, :null => false
    t.boolean  "continental",      :default => false, :null => false
    t.boolean  "intercontinental", :default => false, :null => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  add_index "assocs", ["key"], :name => "index_assocs_on_key", :unique => true

  create_table "assocs_assocs", :force => true do |t|
    t.integer  "assoc1_id",  :null => false
    t.integer  "assoc2_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "assocs_assocs", ["assoc1_id", "assoc2_id"], :name => "index_assocs_assocs_on_assoc1_id_and_assoc2_id", :unique => true
  add_index "assocs_assocs", ["assoc1_id"], :name => "index_assocs_assocs_on_assoc1_id"
  add_index "assocs_assocs", ["assoc2_id"], :name => "index_assocs_assocs_on_assoc2_id"

  create_table "badges", :force => true do |t|
    t.integer  "team_id",    :null => false
    t.integer  "league_id",  :null => false
    t.integer  "season_id",  :null => false
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name",                          :null => false
    t.string   "key",                           :null => false
    t.integer  "place_id",                      :null => false
    t.string   "code"
    t.string   "alt_names"
    t.integer  "country_id",                    :null => false
    t.integer  "region_id"
    t.integer  "city_id"
    t.integer  "pop"
    t.integer  "popm"
    t.integer  "area"
    t.boolean  "m",          :default => false, :null => false
    t.boolean  "c",          :default => false, :null => false
    t.boolean  "d",          :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "continents", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "slug",       :null => false
    t.string   "key",        :null => false
    t.integer  "place_id",   :null => false
    t.string   "alt_names"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "continents", ["key"], :name => "index_continents_on_key", :unique => true

  create_table "countries", :force => true do |t|
    t.string   "name",                            :null => false
    t.string   "slug",                            :null => false
    t.string   "key",                             :null => false
    t.integer  "place_id",                        :null => false
    t.string   "code",                            :null => false
    t.string   "alt_names"
    t.integer  "pop",                             :null => false
    t.integer  "area",                            :null => false
    t.integer  "continent_id"
    t.integer  "country_id"
    t.boolean  "s",            :default => false, :null => false
    t.boolean  "c",            :default => false, :null => false
    t.boolean  "d",            :default => false, :null => false
    t.string   "motor"
    t.string   "iso2"
    t.string   "iso3"
    t.string   "fifa"
    t.string   "net"
    t.string   "wikipedia"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "countries", ["code"], :name => "index_countries_on_code", :unique => true
  add_index "countries", ["key"], :name => "index_countries_on_key", :unique => true

  create_table "event_quotes", :force => true do |t|
    t.integer  "service_id", :null => false
    t.integer  "event_id",   :null => false
    t.integer  "team_id",    :null => false
    t.decimal  "odds",       :null => false
    t.string   "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "event_standing_entries", :force => true do |t|
    t.integer  "event_standing_id", :null => false
    t.integer  "team_id",           :null => false
    t.integer  "pos"
    t.integer  "played"
    t.integer  "won"
    t.integer  "lost"
    t.integer  "drawn"
    t.integer  "goals_for"
    t.integer  "goals_against"
    t.integer  "pts"
    t.string   "comments"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "event_standings", :force => true do |t|
    t.integer  "event_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "key",                          :null => false
    t.integer  "league_id",                    :null => false
    t.integer  "season_id",                    :null => false
    t.date     "start_at",                     :null => false
    t.date     "end_at"
    t.boolean  "team3",      :default => true, :null => false
    t.string   "sources"
    t.string   "config"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "events", ["key"], :name => "index_events_on_key", :unique => true

  create_table "events_grounds", :force => true do |t|
    t.integer  "event_id",   :null => false
    t.integer  "ground_id",  :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "events_grounds", ["event_id", "ground_id"], :name => "index_events_grounds_on_event_id_and_ground_id", :unique => true
  add_index "events_grounds", ["event_id"], :name => "index_events_grounds_on_event_id"

  create_table "events_teams", :force => true do |t|
    t.integer  "event_id",   :null => false
    t.integer  "team_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "events_teams", ["event_id", "team_id"], :name => "index_events_teams_on_event_id_and_team_id", :unique => true
  add_index "events_teams", ["event_id"], :name => "index_events_teams_on_event_id"

  create_table "games", :force => true do |t|
    t.string   "key"
    t.integer  "round_id",                        :null => false
    t.integer  "pos",                             :null => false
    t.integer  "group_id"
    t.integer  "team1_id",                        :null => false
    t.integer  "team2_id",                        :null => false
    t.datetime "play_at",                         :null => false
    t.boolean  "postponed",    :default => false, :null => false
    t.datetime "play_at_v2"
    t.datetime "play_at_v3"
    t.integer  "ground_id"
    t.integer  "city_id"
    t.boolean  "knockout",     :default => false, :null => false
    t.boolean  "home",         :default => true,  :null => false
    t.integer  "score1"
    t.integer  "score2"
    t.integer  "score1et"
    t.integer  "score2et"
    t.integer  "score1p"
    t.integer  "score2p"
    t.integer  "score1i"
    t.integer  "score2i"
    t.integer  "score1ii"
    t.integer  "score2ii"
    t.integer  "next_game_id"
    t.integer  "prev_game_id"
    t.integer  "winner"
    t.integer  "winner90"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "games", ["group_id"], :name => "index_games_on_group_id"
  add_index "games", ["key"], :name => "index_games_on_key", :unique => true
  add_index "games", ["next_game_id"], :name => "index_games_on_next_game_id"
  add_index "games", ["prev_game_id"], :name => "index_games_on_prev_game_id"
  add_index "games", ["round_id"], :name => "index_games_on_round_id"
  add_index "games", ["team1_id"], :name => "index_games_on_team1_id"
  add_index "games", ["team2_id"], :name => "index_games_on_team2_id"

  create_table "goals", :force => true do |t|
    t.integer  "person_id",                     :null => false
    t.integer  "game_id",                       :null => false
    t.integer  "minute"
    t.integer  "offset"
    t.integer  "score1"
    t.integer  "score2"
    t.boolean  "penalty",    :default => false, :null => false
    t.boolean  "owngoal",    :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "grounds", :force => true do |t|
    t.string   "key",        :null => false
    t.string   "title",      :null => false
    t.string   "synonyms"
    t.integer  "country_id", :null => false
    t.integer  "city_id"
    t.integer  "since"
    t.integer  "capacity"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "grounds", ["key"], :name => "index_grounds_on_key", :unique => true

  create_table "group_quotes", :force => true do |t|
    t.integer  "service_id", :null => false
    t.integer  "group_id",   :null => false
    t.integer  "team_id",    :null => false
    t.decimal  "odds",       :null => false
    t.string   "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "group_standing_entries", :force => true do |t|
    t.integer  "group_standing_id", :null => false
    t.integer  "team_id",           :null => false
    t.integer  "pos"
    t.integer  "played"
    t.integer  "won"
    t.integer  "lost"
    t.integer  "drawn"
    t.integer  "goals_for"
    t.integer  "goals_against"
    t.integer  "pts"
    t.string   "comments"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "group_standings", :force => true do |t|
    t.integer  "group_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.integer  "event_id",   :null => false
    t.string   "title",      :null => false
    t.integer  "pos",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "groups", ["event_id"], :name => "index_groups_on_event_id"

  create_table "groups_teams", :force => true do |t|
    t.integer  "group_id",   :null => false
    t.integer  "team_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "groups_teams", ["group_id", "team_id"], :name => "index_groups_teams_on_group_id_and_team_id", :unique => true
  add_index "groups_teams", ["group_id"], :name => "index_groups_teams_on_group_id"

  create_table "langs", :force => true do |t|
    t.string   "key",        :null => false
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leagues", :force => true do |t|
    t.string   "key",                           :null => false
    t.string   "title",                         :null => false
    t.integer  "country_id"
    t.boolean  "club",       :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "logs", :force => true do |t|
    t.string   "msg",        :null => false
    t.string   "level",      :null => false
    t.string   "app"
    t.string   "tag"
    t.integer  "pid"
    t.integer  "tid"
    t.string   "ts"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "names", :force => true do |t|
    t.string   "name",                         :null => false
    t.integer  "place_id",                     :null => false
    t.string   "lang",       :default => "en", :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "persons", :force => true do |t|
    t.string   "key",            :null => false
    t.string   "name",           :null => false
    t.string   "synonyms"
    t.string   "code"
    t.date     "born_at"
    t.integer  "city_id"
    t.integer  "region_id"
    t.integer  "country_id"
    t.integer  "nationality_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "places", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "kind",       :null => false
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "props", :force => true do |t|
    t.string   "key",        :null => false
    t.string   "value",      :null => false
    t.string   "kind"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "quotes", :force => true do |t|
    t.integer  "service_id", :null => false
    t.integer  "game_id",    :null => false
    t.decimal  "odds1",      :null => false
    t.decimal  "oddsx",      :null => false
    t.decimal  "odds2",      :null => false
    t.string   "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "races", :force => true do |t|
    t.integer  "track_id",   :null => false
    t.integer  "event_id",   :null => false
    t.integer  "pos",        :null => false
    t.datetime "start_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "records", :force => true do |t|
    t.integer  "race_id"
    t.integer  "run_id"
    t.integer  "person_id",                    :null => false
    t.integer  "pos"
    t.boolean  "completed",  :default => true, :null => false
    t.string   "state"
    t.string   "comment"
    t.time     "time"
    t.string   "timeline"
    t.integer  "laps"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "key",        :null => false
    t.integer  "place_id",   :null => false
    t.string   "code"
    t.string   "abbr"
    t.string   "iso"
    t.string   "nuts"
    t.string   "alt_names"
    t.integer  "country_id", :null => false
    t.integer  "pop"
    t.integer  "area"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "regions", ["key", "country_id"], :name => "index_regions_on_key_and_country_id", :unique => true

  create_table "rosters", :force => true do |t|
    t.integer  "person_id",  :null => false
    t.integer  "team_id",    :null => false
    t.integer  "event_id"
    t.integer  "pos",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rounds", :force => true do |t|
    t.integer  "event_id",                      :null => false
    t.string   "title",                         :null => false
    t.string   "title2"
    t.integer  "pos",                           :null => false
    t.boolean  "knockout",   :default => false, :null => false
    t.date     "start_at",                      :null => false
    t.date     "end_at"
    t.boolean  "auto",       :default => true,  :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "rounds", ["event_id"], :name => "index_rounds_on_event_id"

  create_table "runs", :force => true do |t|
    t.integer  "race_id",    :null => false
    t.integer  "pos",        :null => false
    t.datetime "start_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "seasons", :force => true do |t|
    t.string   "key",        :null => false
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "services", :force => true do |t|
    t.string   "title",      :null => false
    t.string   "key",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id",        :null => false
    t.integer  "taggable_id",   :null => false
    t.string   "taggable_type", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "tag_id"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_tag_id", :unique => true
  add_index "taggings", ["taggable_id", "taggable_type"], :name => "index_taggings_on_taggable_id_and_taggable_type"

  create_table "tags", :force => true do |t|
    t.string   "key",                       :null => false
    t.string   "slug",                      :null => false
    t.string   "name"
    t.integer  "grade",      :default => 1, :null => false
    t.integer  "parent_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "tags", ["key"], :name => "index_tags_on_key", :unique => true

  create_table "teams", :force => true do |t|
    t.string   "key",                           :null => false
    t.string   "title",                         :null => false
    t.string   "title2"
    t.string   "code"
    t.string   "synonyms"
    t.integer  "country_id",                    :null => false
    t.integer  "city_id"
    t.boolean  "club",       :default => false, :null => false
    t.integer  "since"
    t.string   "address"
    t.string   "web"
    t.integer  "assoc_id"
    t.boolean  "national",   :default => false, :null => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "teams", ["key"], :name => "index_teams_on_key", :unique => true

  create_table "tracks", :force => true do |t|
    t.string   "key",        :null => false
    t.string   "title",      :null => false
    t.string   "synonyms"
    t.string   "code"
    t.integer  "city_id"
    t.integer  "region_id"
    t.integer  "country_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "usages", :force => true do |t|
    t.integer  "country_id",                    :null => false
    t.integer  "lang_id",                       :null => false
    t.boolean  "official",   :default => true,  :null => false
    t.boolean  "minor",      :default => false, :null => false
    t.float    "percent"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
