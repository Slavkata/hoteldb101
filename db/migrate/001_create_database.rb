class CreateDatabase < ActiveRecord::Migration
  def self.up
    ActiveRecord::Schema.define(version: 0) do
      create_table "Clients", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.string "Name", limit: 100, null: false
        t.string "LastName", limit: 100, null: false
        t.integer "Room_id", null: false
        t.integer "Price_id", null: false
        t.datetime "Registration_date", null: false
        t.datetime "Leaving_date", null: false
        t.string "EGN", limit: 10, null: false
        t.integer "Coupon_id"
        t.index ["Coupon_id"], name: "Coupon_id"
        t.index ["Price_id"], name: "Price_id"
        t.index ["Room_id"], name: "Room_id"
      end

      create_table "Coupons", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.string "Coupon_code", limit: 50
        t.datetime "Expiration_date"
        t.boolean "Used"
        t.datetime "Use_date"
        t.integer "Room_id"
        t.boolean "Resturant_access"
        t.string "Valid_for", limit: 25
        t.integer "Client_id"
        t.index ["Room_id"], name: "Room_id"
      end

      create_table "Hotel_Metadata", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.string "Country", limit: 40, null: false
        t.string "City", limit: 40, null: false
        t.string "Name", limit: 40, null: false
        t.string "Category", limit: 50, null: false
      end

      create_table "Prices", id: :integer, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.float "Price", limit: 24
        t.integer "Room_id", null: false
      end

      create_table "Promotions", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.datetime "Begin_date"
        t.datetime "End_date"
        t.string "Valid_for", limit: 25
      end

      create_table "Rooms", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.integer "Size", null: false
        t.integer "Beds_count", null: false
        t.integer "Bathrooms_count", null: false
        t.boolean "Has_kitchen"
        t.boolean "Has_terace"
        t.boolean "Nice_view"
        t.string "Room_type", limit: 25
      end

      create_table "Special_events", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
        t.string "Name", limit: 25
        t.datetime "Begin_date"
        t.datetime "End_date"
      end

      add_foreign_key "Clients", "Coupons", name: "Clients_ibfk_3"
      add_foreign_key "Clients", "Prices", name: "Clients_ibfk_2"
      add_foreign_key "Clients", "Rooms", name: "Clients_ibfk_1"
      add_foreign_key "Coupons", "Rooms", name: "Coupons_ibfk_1"
    end
  end

  def self.down
    # drop all the tables if you really need
    # to support migration back to version 0
  end
end
