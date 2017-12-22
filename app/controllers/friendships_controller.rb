class FriendshipsController < ApplicationController

  def index
    if params[:user_id]
      @friendships = User.find(params[:user_id]).friendships.order('created_at DESC')
    else
      @friendships = Friendships.all.order('created_at DESC')
    end
  end
  
  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    respond_to do |format|
      if @friendship.save
        format.html { redirect_to @friendship, notice: 'Friendship was seccessfully created.' }
      else
        format.html { render 'new' }
      end
    end
  end

  def destroy
    @friendship.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url, notice: 'Friendship was succesfully ended.' }
    end

  end
  private

 
end


