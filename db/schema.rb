
ActiveRecord::Schema[7.0].define(version: 2022_08_10_004600) do
  create_table "accounts", force: :cascade do |t|
    t.integer "provider_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_accounts_on_provider_id"
  end

  create_table "authors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "author_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "mountings", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "part_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_mountings_on_book_id"
    t.index ["part_id"], name: "index_mountings_on_part_id"
  end

  create_table "parts", force: :cascade do |t|
    t.integer "provider_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_parts_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accounts", "providers"
  add_foreign_key "books", "authors"
  add_foreign_key "mountings", "books"
  add_foreign_key "mountings", "parts"
  add_foreign_key "parts", "providers"
end
