class Api::V1::CutiesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    render json: Cuty.find(params[:id])
  end

  def destroy
    cutie = Cuty.find(params[:id])
    posts = cutie.posts
    if current_user == cutie.user
      cutie.destroy
      posts.destroy_all
    end
  end
end
