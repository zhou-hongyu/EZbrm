class AddCategoryToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :category, :text
  end
end
