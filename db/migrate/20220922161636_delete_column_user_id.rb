class DeleteColumnUserId < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :user_id, :string
    remove_column :comments, :user_id, :string
    remove_column :likes, :user_id, :string
  end
end
