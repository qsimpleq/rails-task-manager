require 'test_helper'

class Web::DevelopersControllerTest < ActionController::TestCase
  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should developer create' do
    post :create, params: { developer: attributes_for(:developer) }
    assert_response :redirect
  end
end
