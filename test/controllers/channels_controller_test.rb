require 'test_helper'

class ChannelsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  setup do
    @channel = channels(:first_channel)
    sign_in users(:first_user)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:channels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create channel" do
    assert_difference('Channel.count') do
      post :create, channel: { name: @channel.name, topic: @channel.topic }
    end

    assert_redirected_to channel_path(assigns(:channel))
  end

  test "should show channel" do
    get :show, id: @channel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @channel
    assert_response :success
  end

  test "should update channel" do
    patch :update, id: @channel, channel: { name: @channel.name, topic: @channel.topic }
    assert_redirected_to channel_path(assigns(:channel))
  end

  test "should destroy channel" do
    assert_difference('Channel.count', -1) do
      delete :destroy, id: @channel
    end

    assert_redirected_to channels_path
  end
end
