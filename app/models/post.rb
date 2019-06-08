class Post < ApplicationRecord

  has_one_attached :images

  belongs_to :user

  has_many :upvote_posts, dependent: :destroy
  has_many :downvote_posts, dependent: :destroy
  has_many :mark_innapropiateds, :as => :inappropriate, dependent: :destroy
  has_many :category_posts, dependent: :destroy

  validates :user_id, presence: true ,numericality: {only_integer: true}
  validates :title, :description, presence: true
  validates :title, length: {in: 2..50}
  validates :description, length:  {maximum: 2000}

  def upvote_count
    votes=UpvotePost.where(post_id: self.id)
    votes.length
  end
  def downvote_count
    votes=DownvotePost.where(post_id: self.id)
    votes.length
  end
  def post_categories
    categories1=CategoryPost.where(post_id: self.id)
    categories2=[]
    categories1.each do |cat|
      categories2.push cat.category
    end
    categories2
  end
end
