require 'test_helper'

class ResultControllerTest < ActionDispatch::IntegrationTest
  test "should get kampo" do
    get result_kampo_url
    assert_response :success
  end

end
