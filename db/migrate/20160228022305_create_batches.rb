class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.date :manufacture_date
      t.integer :quantity
      t.string :status
      t.references :stocktype, index: true

      t.timestamps
    end
  end
end
