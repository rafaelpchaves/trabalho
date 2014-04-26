require 'test_helper'

class WebserviceControllerTest < ActionController::TestCase
  test "should get temperatura" do
    get :temperatura
    assert_response :success
  end

end
