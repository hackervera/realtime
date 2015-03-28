require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should trigger websocket response" do
    message = Message.new
    assert message.update_channel
  end
end
