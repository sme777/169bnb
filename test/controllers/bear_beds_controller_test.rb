require "test_helper"

class BearBedsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bear_beds_new_url
    assert_response :success
  end
end
