require 'test_helper'

class EprofiteerControllerTest < ActionController::TestCase
  test "should get consultancy" do
    get :consultancy
    assert_response :success
  end

end
