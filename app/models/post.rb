class Post < ApplicationRecord
  has_many :comments
  has_many :likes
  belongs_to :user
  after_save :update_posts_counter

  def update_posts_counter
    user_id.increment!(:posts_counter)
  end

  def fetch_recent_comments
    comments.order('created_at DESC').last(5)
  end
end
