class CutiesController < ApplicationController

  def index
    @cuties = Cutie.all
  end

  def show
    @cutie = Cutie.find(params[:id])
  end

end
