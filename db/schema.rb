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

ActiveRecord::Schema.define(version: 2019_05_28_103233) do

  create_table "admins", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "username", limit: 25, null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_admins_on_username", unique: true
  end

  create_table "announcements", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.text "content", null: false
    t.date "valability", null: false
    t.boolean "visible_to_teachers", null: false
    t.integer "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "announcements_groups", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "announcement_id"
    t.integer "group_id"
    t.index ["announcement_id", "group_id"], name: "index_announcements_groups_on_announcement_id_and_group_id"
  end

  create_table "courses", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", null: false
    t.string "room", default: "TBA", null: false
    t.string "teacher_first_name"
    t.string "teacher_last_name"
    t.string "start_time", null: false
    t.string "end_time", null: false
    t.string "day", null: false
    t.string "kind", null: false
    t.string "frequency", null: false
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_courses_on_name"
    t.index ["teacher_first_name", "teacher_last_name"], name: "index_courses_on_teacher_first_name_and_teacher_last_name"
  end

  create_table "courses_groups", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "course_id"
    t.integer "group_id"
    t.index ["course_id", "group_id"], name: "index_courses_groups_on_course_id_and_group_id"
  end

  create_table "event_tokens", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_event_tokens_on_token", unique: true
  end

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", null: false
    t.date "date", null: false
    t.string "location", null: false
    t.text "description", null: false
    t.integer "student_id"
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["date"], name: "index_events_on_date"
    t.index ["location"], name: "index_events_on_location"
    t.index ["name"], name: "index_events_on_name"
  end

  create_table "events_students", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "event_id"
    t.integer "student_id"
    t.index ["event_id", "student_id"], name: "index_events_students_on_event_id_and_student_id"
  end

  create_table "events_teachers", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "event_id"
    t.integer "teacher_id"
    t.index ["event_id", "teacher_id"], name: "index_events_teachers_on_event_id_and_teacher_id"
  end

  create_table "groups", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "group_no", null: false
    t.string "major", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_no"], name: "index_groups_on_group_no", unique: true
  end

  create_table "optionals", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", null: false
    t.string "room", default: "TBA", null: false
    t.string "teacher_first_name"
    t.string "teacher_last_name"
    t.string "start_time", null: false
    t.string "end_time", null: false
    t.string "day", null: false
    t.string "kind", null: false
    t.string "frequency", null: false
    t.integer "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_optionals_on_name"
    t.index ["teacher_first_name", "teacher_last_name"], name: "index_optionals_on_teacher_first_name_and_teacher_last_name"
  end

  create_table "optionals_students", id: false, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "optional_id"
    t.integer "student_id"
    t.index ["optional_id", "student_id"], name: "index_optionals_students_on_optional_id_and_student_id"
  end

  create_table "student_tokens", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "token", null: false
    t.integer "group_no", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_student_tokens_on_token", unique: true
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "first_name", limit: 50, null: false
    t.string "last_name", limit: 50, null: false
    t.string "email", limit: 100, null: false
    t.string "username", limit: 25, null: false
    t.string "password_digest", null: false
    t.integer "group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["first_name", "last_name"], name: "index_students_on_first_name_and_last_name"
    t.index ["username"], name: "index_students_on_username", unique: true
  end

  create_table "teacher_tokens", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["token"], name: "index_teacher_tokens_on_token", unique: true
  end

  create_table "teachers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "first_name", limit: 50, null: false
    t.string "last_name", limit: 50, null: false
    t.string "email", limit: 100, null: false
    t.string "username", limit: 25, null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_teachers_on_email", unique: true
    t.index ["first_name", "last_name"], name: "index_teachers_on_first_name_and_last_name"
    t.index ["username"], name: "index_teachers_on_username", unique: true
  end

end
