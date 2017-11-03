json.extract! listing, :id, :heading, :vin, :price, :miles, :decimal, :msrp, :vdp_url, :stock_no, :exterior_color, :interior_color, :seller_comments, :details, :seller_name, :seller_phone, :city_state_zip, :city, :state, :zip, :photo_link, :photo_links, :created_at, :updated_at
json.url listing_url(listing, format: :json)
