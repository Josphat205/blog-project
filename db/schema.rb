ActiveRecord::Schema[7.0].define(version: 20_220_922_115_831) do
  enable_extension 'plpgsql'

  create_table 'comments', force: :cascade do |t|
    t.string 'Text'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'user_id'
    t.integer 'post_id'
  end

  create_table 'likes', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'user_id'
    t.integer 'post_id'
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'Title'
    t.text 'Text'
    t.integer 'CommentsCounter'
    t.integer 'LikesCounter'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'Name'
    t.string 'Photo'
    t.string 'Bio'
    t.string 'PostsCounter'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
