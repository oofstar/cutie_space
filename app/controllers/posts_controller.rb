class PostsController < ApplicationController
  before_action :authenticate_user!

  def new

  end


  def create
    @new_post = Post.new(post_params)
    @cutie = Cuty.find(params[:cuty_id])
    @new_post.cuty = @cutie

    if @new_post.save
      redirect_to @cutie, notice: "Activity Submitted Successfully!"
    else
      flash[:notice] = @new_post.errors.full_messages.join(', ')
      redirect_to @cutie
    end
  end

  private

  def post_params
    params.require(:post).permit(:body, :media_url)
  end

end
