require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index:text" do
    get articles_index:text_url
    assert_response :success
  end

  test "should get about:text" do
    get articles_about:text_url
    assert_response :success
  end

end
