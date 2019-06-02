require 'test_helper'

class DownvotepostControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get downvotepost_create_url
    assert_response :success
  end

  test "should get already_liked?" do
    get downvotepost_already_liked?_url
    assert_response :success
  end

end
