class RealtimeController < WebsocketRails::BaseController
  def initialize_session
    # perform application setup here
    controller_store[:message_count] = 0
  end
  
  def listen
    binding.pry
  end
end
