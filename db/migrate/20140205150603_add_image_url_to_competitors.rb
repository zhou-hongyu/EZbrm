class AddImageUrlToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :image_url, :text
  end
end
