class CategoryPostsController < ApplicationController
  before_action :set_post, only: [:destroy]
  def create
    @cat_post = CategoryPost.new(post_params)

    respond_to do |format|
      if @cat_post.save
        format.html { redirect_to @cat_post.post, notice: 'Category successfully added.' }
      else
        format.html { redirect_to request.referrer, notice: "You can't add that category." }
        format.json { render json: @cat_post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @cat_post.destroy
    redirect_to request.referrer, notice: 'Category successfully removed.'
  end


  private

  def set_post
    @cat_post = CategoryPost.find(params[:format])
  end

  def post_params
    params.permit(:category_id, :post_id)
  end
end
