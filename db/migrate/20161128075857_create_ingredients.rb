class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :price, precision: 12, scale: 3

      t.timestamps null: false
    end
  end
end
