class CutiesController < ApplicationController

  def index
    @cuties = Cuty.all
  end

  def show
    @cutie = Cuty.find(params[:id])
    @posts = @cutie.posts
  end

end
