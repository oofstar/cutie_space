class CutiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @cuties = Cuty.all.shuffle
  end

  def show
    @cutie = Cuty.find(params[:id])
    @user = @cutie.user
    @posts = @cutie.posts.order(created_at: :desc)
    @buddies = @cutie.friendslist
    @new_post = Post.new
  end

  def new
    @cutie = Cuty.new
  end

  def create
    @cutie = Cuty.new(cuty_params)
    @cutie.user = current_user
    if @cutie.save
      redirect_to @cutie, notice: "Cutie Successfully Added!"
    else
      flash[:notice] = @cutie.errors.full_messages.join(', ')
      render action: 'new'
    end

    @team = @cutie.user.cuties

    @team.each do |member|
      if member != @cutie
        Friendship.create(
          friender: member,
          friendee: @cutie
        )
      end
    end

  end

  def edit
    @cutie = Cuty.find(params[:id])
  end

  def update
    @cutie = Cuty.find(params[:id])
    if current_user == @cutie.user
      if @cutie.update(cuty_params)
        redirect_to @cutie, notice: "Cutie Successfully Updated!"
      else
        flash[:notice] = @cutie.errors.full_messages.join(', ')
        render action: 'edit'
      end
    else
      flash[:notice] = "Invalid user. You didn't create this!"
      render action: 'edit'
    end
  end

  def destroy
    @cutie = Cuty.find(params[:id])
    @cutie.destroy
    redirect_to user_path(current_user)
  end

  private

  def cuty_params
    params.require(:cuty).permit(:name, :bio, :cutie_type, :species, :birthdate, :cutie_pic, :wild, :favorite_genre, :location)
  end

end
