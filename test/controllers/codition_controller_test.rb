require 'test_helper'

class CoditionControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get codition_name_url
    assert_response :success
  end

end
