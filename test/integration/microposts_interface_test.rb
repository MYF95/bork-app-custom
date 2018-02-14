require 'test_helper'

class MicropostsInterfaceTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:ponsan)
  end

  test "micropost interface" do
    log_in_as(@user)
    get root_path
    assert_select 'div.pagination'
    assert_select 'input[type=file]'
    # Invalid submission
    assert_no_difference 'Micropost.count' do
      post microposts_path, params: { micropost: { content: "" }}
    end
    assert_select 'div#error_explanation'
    # Valid submission
    content = "This borkpost really ties the room together"
    picture = fixture_file_upload('test/fixtures/logo.png', 'image/png')
    assert_difference 'Micropost.count', 1 do
      post microposts_path, params: { micropost: { content: content, picture: picture}}
    end
    micropost = assigns(:micropost)
    assert micropost.picture?
    assert_redirected_to root_url
    follow_redirect!
    assert_match content, response.body
    # Delete post
    assert_select 'a', text: 'delete'
    first_micropost = @user.microposts.paginate(page: 1).first
    assert_difference 'Micropost.count', -1 do
      delete micropost_path(first_micropost)
    end
    # Visit different user (no delete links)
    get user_path(users(:tsukki))
    assert_select 'a', text: 'delete', count: 0
  end

  test "micropost sidebar count" do
    log_in_as(@user)
    get root_path
    assert_select "span", "#{@user.microposts.count} microposts".pluralize
    other_user = users(:pooky)
    log_in_as(other_user)
    get root_path
    assert_select "span", "0 microposts", response.body
    other_user.microposts.create!(content: "A borkopost")
    get root_path
    assert_select "span", "1 micropost", response.body
  end
end
