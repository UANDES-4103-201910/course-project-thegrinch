class DownvotepostController < ApplicationController
  before_action :find_post

  def create
    if already_disliked?
      flash[:notice] = "You can't dislike more than once"
    else
      if already_liked?
        upvote = UpvotePost.where(user_id: current_user.id, post_id:
            params[:post_id])
        upvote.destroy_all
      end
      @post.downvote_posts.create(user_id: current_user.id)
      flash[:notice] = "Post downvoted"
    end
    redirect_to post_path(@post)
  end

  private

  def already_liked?
    UpvotePost.where(user_id: current_user.id, post_id:
        params[:post_id]).exists?
  end

  def already_disliked?
    DownvotePost.where(user_id: current_user.id, post_id:
        params[:post_id]).exists?
  end

  def find_post
    @post = Post.find(params[:post_id])
  end
end
