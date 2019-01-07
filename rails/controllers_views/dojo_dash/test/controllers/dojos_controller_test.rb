require 'test_helper'

class DojosControllerTest < ActionController::TestCase
  test "should get dojos" do
    get :dojos
    assert_response :success
  end

end
