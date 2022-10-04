require 'rails_helper'

RSpec.describe PostsController, type: :request do
  before(:each) do
    @user = User.create(name: 'Tom', photo: '', posts_counter: 0)
    @post = Post.create(
      author_id: @user,
      title: '1st Post!',
      text: '1st post',
      comments_counter: 0,
      likes_counter: 0
    )
    Comment.create(author_id: @user, post_id: @post, text: '1st comment')
    Comment.create(author_id: @user, post_id: @post, text: '2nd comment')
    Comment.create(author_id: @user, post_id: @post, text: '3rd comment')
  end

  describe ':index' do
    before { get user_posts_path(@user) }

    it('status should be :ok') do
      expect(response).to have_http_status(:ok)
    end

    it('should render :index template') do
      expect(response).to render_template(:index)
    end
  end

  context ':show' do
    before { get user_posts_path(@user, @post) }

    it('status should be :ok') do
      expect(response).to have_http_status(:ok)
    end
  end
end
