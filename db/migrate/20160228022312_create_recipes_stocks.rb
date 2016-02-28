class CreateRecipesStocks < ActiveRecord::Migration
  def change
    create_table :recipes_stocks do |t|
      t.belongs_to :recipe, index: true
      t.belongs_to :stock, index: true
    end
  end
end
