require "test_helper"

class BearNecessitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bear_necessities_index_url
    assert_response :success
  end
end
