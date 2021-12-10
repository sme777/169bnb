require "test_helper"

class BlueFoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blue_foods_index_url
    assert_response :success
  end
end
