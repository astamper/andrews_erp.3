class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.integer :quantity
      t.string :status

      t.timestamps
    end
  end
end
