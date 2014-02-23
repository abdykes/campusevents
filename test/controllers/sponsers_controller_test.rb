require 'test_helper'

class SponsersControllerTest < ActionController::TestCase
  setup do
    @sponser = sponsers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponsers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sponser" do
    assert_difference('Sponser.count') do
      post :create, sponser: { logo: @sponser.logo, name: @sponser.name, url: @sponser.url }
    end

    assert_redirected_to sponser_path(assigns(:sponser))
  end

  test "should show sponser" do
    get :show, id: @sponser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sponser
    assert_response :success
  end

  test "should update sponser" do
    patch :update, id: @sponser, sponser: { logo: @sponser.logo, name: @sponser.name, url: @sponser.url }
    assert_redirected_to sponser_path(assigns(:sponser))
  end

  test "should destroy sponser" do
    assert_difference('Sponser.count', -1) do
      delete :destroy, id: @sponser
    end

    assert_redirected_to sponsers_path
  end
end
