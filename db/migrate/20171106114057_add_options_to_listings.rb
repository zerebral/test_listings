class AddOptionsToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :options, :text
    add_column :listings, :features, :text
    add_column :listings, :dealer_id, :integer
  end
end
