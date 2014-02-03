class AddAddressToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :address, :text
  end
end
