require "test_helper"

class OtherServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get other_services_index_url
    assert_response :success
  end
end
