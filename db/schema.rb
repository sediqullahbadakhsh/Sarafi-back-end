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

ActiveRecord::Schema[7.0].define(version: 2022_11_20_151333) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_debits", force: :cascade do |t|
    t.bigint "amount"
    t.bigint "debit_from_accounts_id", null: false
    t.bigint "bank_accounts_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bank_accounts_id"], name: "index_account_debits_on_bank_accounts_id"
    t.index ["debit_from_accounts_id"], name: "index_account_debits_on_debit_from_accounts_id"
  end

  create_table "activation_fees", force: :cascade do |t|
    t.bigint "activation_fee"
    t.bigint "users_id", null: false
    t.bigint "sarafi_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafi_id"], name: "index_activation_fees_on_sarafi_id"
    t.index ["users_id"], name: "index_activation_fees_on_users_id"
  end

  create_table "annual_fees", force: :cascade do |t|
    t.bigint "annual_fee"
    t.bigint "sarafi_id", null: false
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafi_id"], name: "index_annual_fees_on_sarafi_id"
    t.index ["users_id"], name: "index_annual_fees_on_users_id"
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string "account_name"
    t.string "account_number"
    t.string "bank_name"
    t.boolean "visibility"
    t.bigint "sarafis_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafis_id"], name: "index_bank_accounts_on_sarafis_id"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string "country"
    t.bigint "aproximat_amount"
    t.bigint "actual_amount"
    t.bigint "benefit"
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_credit_cards_on_users_id"
  end

  create_table "credit_option_lists", force: :cascade do |t|
    t.string "country"
    t.string "operator_name"
    t.string "currency_src_trgt"
    t.bigint "amount"
    t.bigint "price"
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_credit_option_lists_on_users_id"
  end

  create_table "credit_purchase_records", force: :cascade do |t|
    t.string "country"
    t.string "operator_name"
    t.string "phone"
    t.bigint "amount_local"
    t.bigint "amount_exchange"
    t.bigint "amount_pay"
    t.bigint "sarafis_id", null: false
    t.bigint "customers_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customers_id"], name: "index_credit_purchase_records_on_customers_id"
    t.index ["sarafis_id"], name: "index_credit_purchase_records_on_sarafis_id"
  end

  create_table "credits", force: :cascade do |t|
    t.bigint "amount"
    t.string "description"
    t.date "recipt_date"
    t.string "recipt_time"
    t.bigint "recipt_number"
    t.string "currency"
    t.bigint "bank_accounts_id", null: false
    t.bigint "customers_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bank_accounts_id"], name: "index_credits_on_bank_accounts_id"
    t.index ["customers_id"], name: "index_credits_on_customers_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.string "password"
    t.bigint "sarafis_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafis_id"], name: "index_customers_on_sarafis_id"
  end

  create_table "debit_from_accounts", force: :cascade do |t|
    t.bigint "amount"
    t.string "currency_src"
    t.string "currency_trgt"
    t.bigint "exchange_rate"
    t.bigint "exchange_amount"
    t.bigint "sarafis_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafis_id"], name: "index_debit_from_accounts_on_sarafis_id"
  end

  create_table "debits", force: :cascade do |t|
    t.bigint "amount"
    t.string "description"
    t.bigint "from_src"
    t.bigint "to_trgt"
    t.bigint "sarafis_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafis_id"], name: "index_debits_on_sarafis_id"
  end

  create_table "hawala_ins", force: :cascade do |t|
    t.bigint "hawala_no"
    t.string "currency_src"
    t.string "currency_trgt"
    t.string "from_src"
    t.string "to_trgt"
    t.bigint "amount"
    t.bigint "exchange_rate"
    t.bigint "amount_exchange"
    t.string "description"
    t.boolean "pay"
    t.boolean "status"
    t.bigint "sarafis_id", null: false
    t.bigint "sarafi_partners_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafi_partners_id"], name: "index_hawala_ins_on_sarafi_partners_id"
    t.index ["sarafis_id"], name: "index_hawala_ins_on_sarafis_id"
  end

  create_table "hawala_outs", force: :cascade do |t|
    t.bigint "hawala_no"
    t.string "currency_src"
    t.string "currency_trgt"
    t.string "from_src"
    t.string "to_trgt"
    t.bigint "amount"
    t.bigint "exchange_rate"
    t.bigint "misc_tax"
    t.bigint "amount_exchange"
    t.string "description"
    t.boolean "pay"
    t.boolean "status"
    t.bigint "sarafis_id", null: false
    t.bigint "sarafi_partners_id", null: false
    t.bigint "customers_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customers_id"], name: "index_hawala_outs_on_customers_id"
    t.index ["sarafi_partners_id"], name: "index_hawala_outs_on_sarafi_partners_id"
    t.index ["sarafis_id"], name: "index_hawala_outs_on_sarafis_id"
  end

  create_table "partner_balances", force: :cascade do |t|
    t.bigint "amount_payed"
    t.string "type"
    t.bigint "sarafi_partners_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafi_partners_id"], name: "index_partner_balances_on_sarafi_partners_id"
  end

  create_table "sarafi_exchange_rates", force: :cascade do |t|
    t.string "currency_src"
    t.string "currency_trgt"
    t.bigint "rate"
    t.bigint "sarafis_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafis_id"], name: "index_sarafi_exchange_rates_on_sarafis_id"
  end

  create_table "sarafi_partners", force: :cascade do |t|
    t.string "partner_name"
    t.string "phone"
    t.string "mobile"
    t.string "email"
    t.string "address"
    t.string "sarafis_references"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sarafis", force: :cascade do |t|
    t.string "sarafi_code"
    t.string "sarafi_name"
    t.string "owner"
    t.string "license_number"
    t.string "mobile"
    t.string "email"
    t.string "address"
    t.string "logo"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sharing_credits", force: :cascade do |t|
    t.bigint "amount"
    t.bigint "sarafis_id", null: false
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafis_id"], name: "index_sharing_credits_on_sarafis_id"
    t.index ["users_id"], name: "index_sharing_credits_on_users_id"
  end

  create_table "system_exchange_rates", force: :cascade do |t|
    t.string "currency_src"
    t.string "currency_trgt"
    t.bigint "rate"
    t.bigint "users_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_system_exchange_rates_on_users_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_sarafis", force: :cascade do |t|
    t.bigint "users_id", null: false
    t.bigint "sarafis_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sarafis_id"], name: "index_user_sarafis_on_sarafis_id"
    t.index ["users_id"], name: "index_user_sarafis_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mobile"
    t.string "email"
    t.string "address"
    t.string "photo"
    t.string "password"
    t.boolean "status"
    t.bigint "user_roles_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_roles_id"], name: "index_users_on_user_roles_id"
  end

  add_foreign_key "account_debits", "bank_accounts", column: "bank_accounts_id"
  add_foreign_key "account_debits", "debit_from_accounts", column: "debit_from_accounts_id"
  add_foreign_key "activation_fees", "sarafis"
  add_foreign_key "activation_fees", "users", column: "users_id"
  add_foreign_key "annual_fees", "sarafis"
  add_foreign_key "annual_fees", "users", column: "users_id"
  add_foreign_key "bank_accounts", "sarafis", column: "sarafis_id"
  add_foreign_key "credit_cards", "users", column: "users_id"
  add_foreign_key "credit_option_lists", "users", column: "users_id"
  add_foreign_key "credit_purchase_records", "customers", column: "customers_id"
  add_foreign_key "credit_purchase_records", "sarafis", column: "sarafis_id"
  add_foreign_key "credits", "bank_accounts", column: "bank_accounts_id"
  add_foreign_key "credits", "customers", column: "customers_id"
  add_foreign_key "customers", "sarafis", column: "sarafis_id"
  add_foreign_key "debit_from_accounts", "sarafis", column: "sarafis_id"
  add_foreign_key "debits", "customers", column: "from_src"
  add_foreign_key "debits", "customers", column: "to_trgt"
  add_foreign_key "debits", "sarafis", column: "sarafis_id"
  add_foreign_key "hawala_ins", "sarafi_partners", column: "sarafi_partners_id"
  add_foreign_key "hawala_ins", "sarafis", column: "sarafis_id"
  add_foreign_key "hawala_outs", "customers", column: "customers_id"
  add_foreign_key "hawala_outs", "sarafi_partners", column: "sarafi_partners_id"
  add_foreign_key "hawala_outs", "sarafis", column: "sarafis_id"
  add_foreign_key "partner_balances", "sarafi_partners", column: "sarafi_partners_id"
  add_foreign_key "sarafi_exchange_rates", "sarafis", column: "sarafis_id"
  add_foreign_key "sharing_credits", "sarafis", column: "sarafis_id"
  add_foreign_key "sharing_credits", "users", column: "users_id"
  add_foreign_key "system_exchange_rates", "users", column: "users_id"
  add_foreign_key "user_sarafis", "sarafis", column: "sarafis_id"
  add_foreign_key "user_sarafis", "users", column: "users_id"
  add_foreign_key "users", "user_roles", column: "user_roles_id"
end
