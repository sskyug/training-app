class HomesController < ApplicationController
  before_action :to_root, except: [:index]
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:post).merge(user_id: current_user.id)
  end
  def to_root
    redirect_to root_path unless user_signed_in?
  end


end
