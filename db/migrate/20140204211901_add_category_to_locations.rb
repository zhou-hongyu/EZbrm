class AddCategoryToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :category, :text
  end
end
