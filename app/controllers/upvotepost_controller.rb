class UpvotepostController < ApplicationController
  before_action :find_post
  before_action :find_upvote, only: [:destroy]

  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      if already_disliked?
        downvote = DownvotePost.where(user_id: current_user.id, post_id:
            params[:post_id])
        downvote.destroy_all
      end
      @post.upvote_posts.create(user_id: current_user.id)
      flash[:notice] = "Post upvoted!"
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
  def find_upvote
    @upvote = @post.upvote_posts.find(params[:id])
  end
end
