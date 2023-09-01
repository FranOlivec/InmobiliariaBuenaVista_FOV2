require "test_helper"

class HomexControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homex_index_url
    assert_response :success
  end
end
