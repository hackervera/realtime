require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  setup do
    @message = messages(:first_message)
    @channel = channels(:first_channel)
    sign_in users(:first_user)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messages)
  end


  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { text: @message.text, channel_id: @channel.id }
    end

    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @message, message: {channel_id: @channel.id}
    assert_response :success
  end

  test "should update message" do
    patch :update, id: @message, message: { text: @message.text }
    assert_redirected_to message_path(assigns(:message))
  end

  test "should destroy message" do
    assert_difference('Message.count', -1) do
      delete :destroy, id: @message
    end

    assert_redirected_to messages_path
  end
end
