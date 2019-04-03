require 'test_helper'

class ConditionControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get condition_name_url
    assert_response :success
  end

end
