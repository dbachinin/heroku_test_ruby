require 'test_helper'

class LdapControllerTest < ActionController::TestCase
  test "should get test" do
    get :test
    assert_response :success
  end

end
