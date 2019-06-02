class FollowPostsController < ApplicationController
  before_action :find_post

  def create
    if already_following?
    else
      @post.downvote_posts.create(user_id: current_user.id)
      flash[:notice] = "Following post!"
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
