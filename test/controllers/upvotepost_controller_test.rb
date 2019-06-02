require 'test_helper'

class UpvotepostControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get upvotepost_create_url
    assert_response :success
  end

  test "should get already_liked?" do
    get upvotepost_already_liked?_url
    assert_response :success
  end

end
