require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get martok" do
    get home_martok_url
    assert_response :success
  end

end
