class CreateDailyPurchases < ActiveRecord::Migration
  def change
    create_table :daily_purchases do |t|
      t.references :listing, index: true
      t.date :day
      t.integer :count

      t.timestamps
    end
  end
end
