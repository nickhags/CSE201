require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
 test 'creating a new User' do
    # Visit the index page
    get users_url
    assert_select 'a', 'New User'

    # Click the New User link
    get new_user_url
    assert_response :ok
    assert_select 'h1', 'New User'
    assert_select 'form' do
	  assert_select 'input#user_name'
      assert_select 'input#user_email'
      assert_select 'input#user_password'
      assert_select 'input#user_password_confirmation'
    end

    # Submit the form
    user_attributes = {
	  name: 'pentaQ',
      email: 'user1@example.com',
      password: 'secret',
      password_confirmation: 'secret',
    }
    post users_url, params: { user: user_attributes }
    assert_response :redirect
    follow_redirect!

    # Verify that the User was created
    assert_select '#notice', 'User was successfully created.'
    assert_select '#email', "Email:\n  user1@example.com"
    assert_select 'a', 'Back'

    # Verify that User appears in listing
    get users_url
    assert_select 'table' do
      assert_select 'tr td', 'user1@example.com'
    end
  end
end
