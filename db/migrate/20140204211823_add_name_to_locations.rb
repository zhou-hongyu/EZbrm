class AddNameToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :name, :text
  end
end
