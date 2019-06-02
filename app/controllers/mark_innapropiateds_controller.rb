class MarkInnapropiatedsController < ApplicationController
  before_action :find_post

  def create
    if already_reported?
    else
      @post.downvote_posts.create(user_id: current_user.id)
      flash[:notice] = "Post reported"
    end
    redirect_to post_path(@post)
  end

  private

  def already_reported?
    MarkInnapropiated.where(user_id: current_user.id, post_id:
        params[:post_id]).exists?
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
