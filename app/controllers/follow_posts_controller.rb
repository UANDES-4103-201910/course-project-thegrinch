class FollowPostsController < ApplicationController
  before_action :find_post

  def create
    if already_following?
      follow=FollowPost.where(user_id: current_user.id, post_id: @post.id)
      follow.destroy_all
      flash[:notice] = "Removed from favorites"
    else
      FollowPost.create(user_id: current_user.id, post_id: @post.id)
      flash[:notice] = "Post added to favorites!"
    end
    redirect_to post_path(@post)
  end

  private

  def already_following?
    FollowPost.where(user_id: current_user.id, post_id:
        params[:post_id]).exists?
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
