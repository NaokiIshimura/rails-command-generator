require 'test_helper'

class ConfigControllerTest < ActionDispatch::IntegrationTest
  test "should get sqlite3" do
    get config_sqlite3_url
    assert_response :success
  end

  test "should get mysql" do
    get config_mysql_url
    assert_response :success
  end

  test "should get postgresql" do
    get config_postgresql_url
    assert_response :success
  end

end
