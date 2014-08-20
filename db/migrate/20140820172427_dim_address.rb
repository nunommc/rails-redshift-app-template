class DimAddress < ActiveRecord::Migration
  def change
    create_table "DimAddress", id: false do |t|
      t.string "id",                  limit: 'AA99 9AA'.size,  null: false
      t.string "address",             limit: 60,               null: false
      t.string "region",              limit: 60,               null: false
      t.string "franchise_territory", limit: 60,               null: false
      t.string "udprn",               limit: 60,               null: false
      t.string "country",             limit: 3,                null: false
    end
  end
end
