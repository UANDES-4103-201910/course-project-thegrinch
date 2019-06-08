# frozen_string_literal: true

class User < ApplicationRecord
  extend Devise::Models

  require 'uri'

  has_one_attached :profile_pic

  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :blockeds, class_name: 'block', foreign_key: 'blocked_id', dependent: :destroy
  has_many :owner_blocks, class_name: 'block', foreign_key: 'owner_id', dependent: :destroy
  has_many :followers, class_name: 'follow_user', foreign_key: 'followed_id', dependent: :destroy
  has_many :following, class_name: 'follow_user', foreign_key: 'follower_id', dependent: :destroy
  has_many :taggeds, class_name: 'tag', foreign_key: 'tagged_id', dependent: :destroy
  has_many :taggers, class_name: 'tag', foreign_key: 'tagger_id', dependent: :destroy
  has_many :achievements, through: :achievement_users, dependent: :destroy
  has_many :downvote_comments, dependent: :destroy
  has_many :upvote_comments, dependent: :destroy
  has_many :upvote_posts, dependent: :destroy
  has_many :downvote_posts, dependent: :destroy
  has_many :follow_posts, dependent: :destroy
  has_many :mark_innapropiateds, dependent: :destroy

  validates :nickname, :email, :password, presence: true
  validates :nickname, length: { minimum: 2 }, uniqueness: {case_sensitive: true}
  validates :name, length: { minimum: 2 }
  validates :bio, length: { maximum: 500 }
  validates :password, length: { in: 6..20 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: {case_sensitive: true}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  def user_avatar
    if self.profile_pic.attached?
      self.profile_pic
    else
      'default-user.png'
    end
  end

end
