require 'test_helper'

class EventsSponsersControllerTest < ActionController::TestCase
  setup do
    @events_sponser = events_sponsers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_sponsers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_sponser" do
    assert_difference('EventsSponser.count') do
      post :create, events_sponser: { event_id: @events_sponser.event_id, sponser_id: @events_sponser.sponser_id }
    end

    assert_redirected_to events_sponser_path(assigns(:events_sponser))
  end

  test "should show events_sponser" do
    get :show, id: @events_sponser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @events_sponser
    assert_response :success
  end

  test "should update events_sponser" do
    patch :update, id: @events_sponser, events_sponser: { event_id: @events_sponser.event_id, sponser_id: @events_sponser.sponser_id }
    assert_redirected_to events_sponser_path(assigns(:events_sponser))
  end

  test "should destroy events_sponser" do
    assert_difference('EventsSponser.count', -1) do
      delete :destroy, id: @events_sponser
    end

    assert_redirected_to events_sponsers_path
  end
end
