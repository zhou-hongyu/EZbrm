class CreateCompetitors < ActiveRecord::Migration
  def change
    create_table :competitors do |t|
      t.text :name
      t.references :location, index: true
    end
  end
end
