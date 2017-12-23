class FriendshipsController < ApplicationController

  def index
    if params[:user_id]
      @friendships = User.find(params[:user_id]).followers
    else
      @friendships = Friendships.all.order('created_at DESC')
    end
  end


 
end


