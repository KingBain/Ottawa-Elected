require 'test_helper'

class NewsarticlesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsarticles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsarticle" do
    assert_difference('Newsarticle.count') do
      post :create, :newsarticle => { }
    end

    assert_redirected_to newsarticle_path(assigns(:newsarticle))
  end

  test "should show newsarticle" do
    get :show, :id => newsarticles(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => newsarticles(:one).to_param
    assert_response :success
  end

  test "should update newsarticle" do
    put :update, :id => newsarticles(:one).to_param, :newsarticle => { }
    assert_redirected_to newsarticle_path(assigns(:newsarticle))
  end

  test "should destroy newsarticle" do
    assert_difference('Newsarticle.count', -1) do
      delete :destroy, :id => newsarticles(:one).to_param
    end

    assert_redirected_to newsarticles_path
  end
end
