class CreateComponentsComponents < ActiveRecord::Migration
  def change
    create_table :components_components do |t|
      t.belongs_to :component, index: true
      t.belongs_to :component, index: true
    end
  end
end
