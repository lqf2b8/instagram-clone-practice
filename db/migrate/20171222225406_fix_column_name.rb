class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :friendships, :user_id, :id
    rename_column :friendships, :friend_id, :follower_id
    add_column :friendships, :followed_id, :integer
    remove_column :friendships, :create
    remove_column :friendships, :destroy
  end
end
