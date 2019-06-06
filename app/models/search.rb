class Search < ApplicationRecord
  def posts
    @posts ||= find_posts
  end

  def users
    @users ||= find_users
  end
  private

  def find_posts
    posts = Post.order(:title)
    posts = posts.includes(:category_posts).where(category_posts: {category_id: category_id}) if category_id.present?
    posts = posts.where("title like ?", "%#{keywords}%").or(posts.where("location like ?", "%#{keywords}%")) if keywords.present?
    posts
  end
  def find_users
    posts = User.order(:title)
    posts = posts.where("nickname like ?", "%#{keywords}%").or(posts.where("location like ?", "%#{keywords}%")) if keywords.present?
    posts
  end
end
