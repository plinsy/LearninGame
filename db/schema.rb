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

ActiveRecord::Schema.define(version: 2019_04_20_120655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "add_option_to_questions", force: :cascade do |t|
    t.bigint "option_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_id"], name: "index_add_option_to_questions_on_option_id"
    t.index ["question_id"], name: "index_add_option_to_questions_on_question_id"
  end

  create_table "degrees", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doing_exams", force: :cascade do |t|
    t.bigint "exam_id"
    t.bigint "student_id"
    t.integer "total_points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exam_id"], name: "index_doing_exams_on_exam_id"
    t.index ["student_id"], name: "index_doing_exams_on_student_id"
  end

  create_table "doing_tests", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "test_id"
    t.integer "total_points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_doing_tests_on_student_id"
    t.index ["test_id"], name: "index_doing_tests_on_test_id"
  end

  create_table "educational_establishments", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string "title"
    t.bigint "test_id"
    t.bigint "student_id"
    t.datetime "start_date"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_exams_on_student_id"
    t.index ["test_id"], name: "index_exams_on_test_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.string "image"
    t.text "css"
    t.text "js"
    t.text "other_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "content"
    t.string "status", default: "None"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_to_tests", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_to_tests_on_question_id"
    t.index ["test_id"], name: "index_question_to_tests_on_test_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "teacher_id"
    t.text "content"
    t.integer "points", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_questions_on_teacher_id"
  end

  create_table "results", force: :cascade do |t|
    t.string "title"
    t.bigint "student_id"
    t.bigint "test_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_results_on_student_id"
    t.index ["test_id"], name: "index_results_on_test_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "date_of_birth"
    t.string "address"
    t.string "city"
    t.string "country"
    t.bigint "educational_establishment_id"
    t.bigint "subject_id"
    t.bigint "level_id"
    t.integer "score", default: 0
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["educational_establishment_id"], name: "index_students_on_educational_establishment_id"
    t.index ["level_id"], name: "index_students_on_level_id"
    t.index ["subject_id"], name: "index_students_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "date_of_birth"
    t.string "address"
    t.string "city"
    t.string "country"
    t.bigint "educational_establishment_id"
    t.bigint "subject_id"
    t.string "degrees"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["educational_establishment_id"], name: "index_teachers_on_educational_establishment_id"
    t.index ["subject_id"], name: "index_teachers_on_subject_id"
  end

  create_table "tests", force: :cascade do |t|
    t.bigint "teacher_id"
    t.string "title"
    t.bigint "level_id"
    t.bigint "subject_id"
    t.integer "score", default: 0
    t.boolean "is_done", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_tests_on_level_id"
    t.index ["subject_id"], name: "index_tests_on_subject_id"
    t.index ["teacher_id"], name: "index_tests_on_teacher_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username", default: "", null: false
    t.boolean "is_admin", default: false
    t.string "status", default: "Guest"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "facebook_id"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
