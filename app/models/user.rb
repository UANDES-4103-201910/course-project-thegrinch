class User < ApplicationRecord
  extend Devise::Models

  require 'uri'

  has_many :comments
  has_many :posts
  has_many :blockeds, class_name: 'block', foreign_key: 'blocked_id'
  has_many :owner_blocks, class_name: 'block', foreign_key: 'owner_id'
  has_many :followers, class_name: 'follow_user', foreign_key: 'followed_id'
  has_many :following, class_name: 'follow_user', foreign_key: 'follower_id'
  has_many :taggeds, class_name: 'tag', foreign_key: 'tagged_id'
  has_many :taggers, class_name: 'tag', foreign_key: 'tagger_id'
  has_many :achievements, through: :achievement_users
  has_many :downvote_comments
  has_many :upvote_comments
  has_many :upvote_posts
  has_many :downvote_posts
  has_many :follow_posts
  has_many :mark_innapropiateds

  validates :nickname, :email, :password, presence: true
  validates :nickname, length: { minimum: 2 }, uniqueness: {case_sensitive: true}
  validates :name, length: { minimum: 2 }
  validates :bio, length: { maximum: 500 }
  validates :password, length: { in: 6..20 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: {case_sensitive: true}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
