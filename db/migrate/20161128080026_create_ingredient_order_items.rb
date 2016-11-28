class CreateIngredientOrderItems < ActiveRecord::Migration
  def change
    create_table :ingredient_order_items do |t|
      t.references :order_item, index: true, foreign_key: true
      t.references :ingredient, index: true, foreign_key: true
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
