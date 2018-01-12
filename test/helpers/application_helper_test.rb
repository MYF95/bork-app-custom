require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "Bork on rails tutorial bork app"
    assert_equal full_title("Help"), "Help | Bork on rails tutorial bork app"
    assert_equal full_title("About"), "About | Bork on rails tutorial bork app"
    assert_equal full_title("Contact"), "Contact | Bork on rails tutorial bork app"
    assert_equal full_title("Fried Chicken"), "Fried Chicken | Bork on rails tutorial bork app"
    assert_equal full_title("Sign up"), "Sign up | Bork on rails tutorial bork app"
  end
end

