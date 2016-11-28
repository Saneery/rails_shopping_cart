class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.deciaml{12,3} :total

      t.timestamps null: false
    end
  end
end
