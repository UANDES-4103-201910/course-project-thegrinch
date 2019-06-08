require 'test_helper'

class CategoryPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get category_posts_create_url
    assert_response :success
  end

end
