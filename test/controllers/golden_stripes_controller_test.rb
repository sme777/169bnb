require "test_helper"

class GoldenStripesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get golden_stripes_index_url
    assert_response :success
  end
end
