require 'test_helper'

class BreweriesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get breweries_create_url
    assert_response :success
  end

end
