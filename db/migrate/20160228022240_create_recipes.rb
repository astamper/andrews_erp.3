class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :parent_product_id
      t.integer :child_product_id
      t.integer :quantity
      t.string :status

      t.timestamps
    end
  end
end
