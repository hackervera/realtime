class Message < ActiveRecord::Base
  after_save :update_channel
  belongs_to :channel
  belongs_to :user
  private
    def update_channel
      WebsocketRails[self.channel.name].trigger 'new', {user: self.user, message: self}
    end
end
