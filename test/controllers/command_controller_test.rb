require 'test_helper'

class CommandControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get command_controller_url
    assert_response :success
  end

  test "should get scaffold" do
    get command_scaffold_url
    assert_response :success
  end

end
