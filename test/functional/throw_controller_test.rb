require 'test_helper'

class ThrowControllerTest < ActionController::TestCase
  test "should get rock" do
    get :rock
    assert_response :success
  end

  test "should get paper" do
    get :paper
    assert_response :success
  end

  test "should get scissors" do
    get :scissors
    assert_response :success
  end

end
