class DimTime < ActiveRecord::Migration
  def change
    create_table :DimTime, id: false do |t|
      t.string           :id, limit: Time.now.iso8601.size  ,null: false
      t.integer        :year                                ,null: false
      t.string       :season, limit: 6                      ,null: false
      t.integer     :quarter                                ,null: false
      t.integer       :month                                ,null: false
      t.integer        :week                                ,null: false
      t.integer         :day                                ,null: false
      t.integer        :hour                                ,null: false
      t.integer      :minute                                ,null: false
      t.string  :day_of_week, limit: 3                      ,null: false
    end
  end
end
