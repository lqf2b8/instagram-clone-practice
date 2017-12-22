class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  
  def index
    if params[:user_id]
      @pictures = User.find(params[:user_id]).pictures.order('created_at DESC')
    else
      @pictures = Picture.all.order('created_at DESC')
    end
  end

  def show
  end

  def new
    @picture = current_user.pictures.build
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    respond_to do |format|
      if @picture.save
        format.html { redirect_to @picture, notice: 'Picture was seccessfully created.' }
      else
        format.html { render 'new' }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @picture.update(picture_params)
        format.html { redirect_to @picture, notice: 'Picture was successfully updated.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @picture.destroy
    respond_to do |format|
      format.html { redirect_to pictures_url, notice: 'Picture was seccessfully destroyed.' }
    end
  end


 
  

  private
  
  def set_picture
      @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:title, :description, :user_id) #added user_id for nested form
  end
  
    
 end
