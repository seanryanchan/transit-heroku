require 'test_helper'

class CommutersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get commuters_new_url
    assert_response :success
  end

end
