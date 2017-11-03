class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.text :heading
      t.text :vin
      t.decimal :price
      t.string :miles
      t.string :decimal
      t.decimal :msrp
      t.text :vdp_url
      t.text :stock_no
      t.text :exterior_color
      t.text :interior_color
      t.text :seller_comments
      t.text :details
      t.text :seller_name
      t.text :seller_phone
      t.text :city_state_zip
      t.text :city
      t.text :state
      t.text :zip
      t.text :photo_link
      t.text :photo_links

      t.timestamps
    end
  end
end
