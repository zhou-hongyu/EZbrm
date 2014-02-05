class AddReviewCountToCompetitors < ActiveRecord::Migration
  def change
    add_column :competitors, :review_count, :integer
  end
end
