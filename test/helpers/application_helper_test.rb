require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Viet Nam Book Strap"
    assert_equal full_title("Help"), "Help | Viet Nam Book Strap"
  end
end