require "test_helper"

class LocationsControllerTest < ActionDispatch::IntegrationTest
  test "can create a location" do
    get "/locations/new"
    assert_response :success

    post "/locations",
      params: {location: { name: "Vancouver", addressline1: "1354 rue de la prairie", province: "Quebec", city: "Montreal", postalcode: "H2X8G4"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success 

  end

  test "create a duplicate location" do
    get "/locations/new"
    assert_response :success

    post "/locations",
      params: {location: { name: "Montreal", addressline1: "1354 rue de la prairie", province: "Quebec", city: "Montreal", postalcode: "H2X8G4"}}
    assert_response 422
  end

end
