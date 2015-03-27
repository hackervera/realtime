class AddChannelRefToMessages < ActiveRecord::Migration
  def change
    add_reference :messages, :channel, index: true
    add_foreign_key :messages, :channels
  end
end
