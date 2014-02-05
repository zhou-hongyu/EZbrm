class AddUrlToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :url, :text
  end
end
