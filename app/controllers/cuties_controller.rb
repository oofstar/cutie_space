class CutiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @cuties = Cuty.all
  end

  def show
    @cutie = Cuty.find(params[:id])
    @posts = @cutie.posts
  end

  def new
    @user = @current_user
    @cutie = Cuty.new
  end

  def create
    @cutie =Cuty.new(cuty_params)
    @cutie.user = current_user

    if @cutie.save
      redirect_to @cutie, notice: "Cutie Successfully Added!"
    else
      flash[:notice] = @cutie.errors.full_messages.join(', ')
      render action: 'new'
    end
  end

  private

  def cuty_params
    params.require(:cuty).permit(:name, :bio, :cutie_type, :species, :birthdate, :cutie_pic)
  end

end
