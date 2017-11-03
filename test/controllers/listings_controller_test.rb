require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { city: @listing.city, city_state_zip: @listing.city_state_zip, decimal: @listing.decimal, details: @listing.details, exterior_color: @listing.exterior_color, heading: @listing.heading, interior_color: @listing.interior_color, miles: @listing.miles, msrp: @listing.msrp, photo_link: @listing.photo_link, photo_links: @listing.photo_links, price: @listing.price, seller_comments: @listing.seller_comments, seller_name: @listing.seller_name, seller_phone: @listing.seller_phone, state: @listing.state, stock_no: @listing.stock_no, vdp_url: @listing.vdp_url, vin: @listing.vin, zip: @listing.zip } }
    end

    assert_redirected_to listing_url(Listing.last)
  end

  test "should show listing" do
    get listing_url(@listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(@listing)
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { city: @listing.city, city_state_zip: @listing.city_state_zip, decimal: @listing.decimal, details: @listing.details, exterior_color: @listing.exterior_color, heading: @listing.heading, interior_color: @listing.interior_color, miles: @listing.miles, msrp: @listing.msrp, photo_link: @listing.photo_link, photo_links: @listing.photo_links, price: @listing.price, seller_comments: @listing.seller_comments, seller_name: @listing.seller_name, seller_phone: @listing.seller_phone, state: @listing.state, stock_no: @listing.stock_no, vdp_url: @listing.vdp_url, vin: @listing.vin, zip: @listing.zip } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
