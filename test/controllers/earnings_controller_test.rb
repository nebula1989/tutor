require 'test_helper'

class EarningsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get earnings_index_url
    assert_response :success
  end

end
