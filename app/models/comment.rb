class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user
    after_save :update_counter
  def update_counter
    post.increment!(:comments_counter)
  end
end
