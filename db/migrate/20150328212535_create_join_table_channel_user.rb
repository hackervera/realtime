class CreateJoinTableChannelUser < ActiveRecord::Migration
  def change
    create_join_table :channels, :users do |t|
      # t.index [:channel_id, :user_id]
      # t.index [:user_id, :channel_id]
    end
  end
end
