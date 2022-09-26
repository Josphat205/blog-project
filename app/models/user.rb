class User < ApplicationRecord
  has_many :posts, foreign_key: 'user_id'
  has_many :comments, foreign_key: 'user_id'
  has_many :likes, foreign_key: 'user_id'
  def fetch_recent_posts
    posts.order('created_at DESC').last(3)
  end
end
