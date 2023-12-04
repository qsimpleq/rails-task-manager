require 'test_helper'

class Web::SessionsControllerTest < ActionController::TestCase
  test 'should create session' do
    password = generate(:string)
    user = create(:user, { password: password })
    attrs = {
      email: user.email,
      password: password,
    }
    post :create, params: { session_form: attrs }
    assert_response :redirect
  end

  test 'should delete session' do
    delete :destroy
    assert_response :redirect
  end
end
