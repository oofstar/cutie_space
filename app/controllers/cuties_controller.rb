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

end
