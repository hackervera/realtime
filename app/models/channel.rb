class Channel < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :messages
  def update_text(message)
    binding.pry
  end
end
