module ChannelsHelper
  def current_user_id
    current_user.id
  end
  
  def current_channel_id
    @channel.id
  end
end
