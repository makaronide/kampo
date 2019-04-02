require 'test_helper'

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get content" do
    get questions_content_url
    assert_response :success
  end

end
