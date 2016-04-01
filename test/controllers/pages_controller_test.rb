require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get paginax" do
    get :paginax
    assert_response :success
  end

end
