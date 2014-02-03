class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.text :name
      t.text :url
      t.text :category
      t.references :user, index: true
    end
  end
end
