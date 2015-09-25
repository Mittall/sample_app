class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :category_id
      t.string :name
      t.integer :price

      t.timestamps null: false
    end
  end
end
