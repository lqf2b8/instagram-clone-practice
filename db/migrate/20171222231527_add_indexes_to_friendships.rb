class AddIndexesToFriendships < ActiveRecord::Migration[5.1]
  def change
    add_index :friendships, :follower_id
    add_index :friendships, :followed_id
    add_index :friendships, [:follower_id, :followed_id], unique: true
  end
end
