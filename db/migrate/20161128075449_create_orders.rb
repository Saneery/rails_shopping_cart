class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.decimal :price, precision: 12, scale: 3

      t.timestamps null: false
    end
  end
end
