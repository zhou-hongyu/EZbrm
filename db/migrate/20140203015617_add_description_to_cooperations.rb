class AddDescriptionToCooperations < ActiveRecord::Migration
  def change
    add_column :cooperations, :description, :text
  end
end
