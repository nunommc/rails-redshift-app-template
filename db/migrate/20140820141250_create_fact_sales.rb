class CreateFactSales < ActiveRecord::Migration
  def change
    create_table :FactSale do |t|
      t.string        :started_at, limit: Time.now.iso8601.size
      t.integer   :charged_amount
      t.integer :estimated_amount
      t.string          :location, limit: 'AA99 9AA'.size

      t.datetime      :created_at
    end
  end
end
