require "test_helper"

class ProductListingsControllerTest < ActionDispatch::IntegrationTest
  test "can create a product listing" do
    get "/product_listings/new"
    assert_response :success

    post "/product_listings",
      params: {product_listing: { quantity: "5", location_id: locations(:two).id, product_id: products(:iphone).id}}
    assert_response :redirect
    follow_redirect!
    assert_response :success 
  end
end
