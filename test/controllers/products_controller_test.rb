require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "can create a product" do
    get "/products/new"
    assert_response :success

    post "/products",
      params: {product: { name: "Keyboard", weight: "500", width: "50", height: "20", depth: "5"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success 

  end

  test "create a duplicate product" do
    get "/products/new"
    assert_response :success

    post "/products",
      params: {product: { name: "Iphone", weight: "500", width: "50", height: "20", depth: "5"}}
    assert_response 422

  end
end
