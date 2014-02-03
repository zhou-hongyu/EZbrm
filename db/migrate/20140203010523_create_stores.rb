class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.text :name
      t.text :category
      t.text :address
      t.text :url
    end
  end
end
