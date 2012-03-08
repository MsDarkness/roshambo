require 'test_helper'

class StatsControllerTest < ActionController::TestCase
  test "should get computerScore" do
    get :computerScore
    assert_response :success
  end

  test "should get playerScore" do
    get :playerScore
    assert_response :success
  end

end
