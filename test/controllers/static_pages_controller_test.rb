require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Viet Nam Book Strap"
  end
  
   test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Viet Nam Book Strap"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Shared Spot | #{@base_title}"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "Nao | #{@base_title}"
  end
  
  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Link | Viet Nam Book Strap"
  end
end