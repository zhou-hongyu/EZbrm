class CreateCooperations < ActiveRecord::Migration
  def change
    create_table :cooperations do |t|
      t.text :name
      t.text :category
      t.string :store
      t.string :references
      t.references :startup, index: true
    end
  end
end
