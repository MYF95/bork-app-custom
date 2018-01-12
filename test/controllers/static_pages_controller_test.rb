require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Bork on rails tutorial bork app"
  end

  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help | Bork on rails tutorial bork app"
  end
  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Bork on rails tutorial bork app"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Bork on rails tutorial bork app"
  end

  test "should get chicken" do
    get chicken_path
    assert_response :success
    assert_select "title", "Fried Chicken | Bork on rails tutorial bork app"
  end

end
