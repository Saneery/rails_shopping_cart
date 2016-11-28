class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.deciaml{12,3} :price
      t.string :image_path

      t.timestamps null: false
    end
  end
end
