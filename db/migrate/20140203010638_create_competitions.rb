class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.text :name
      t.text :category
      t.references :store, index: true
      t.references :startup, index: true
    end
  end
end
