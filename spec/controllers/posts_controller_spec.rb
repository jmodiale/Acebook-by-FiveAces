require 'rails_helper'


RSpec.describe PostsController, type: :controller do
  describe "GET /new " do
    it "responds with 200" do
      get :new
      expect(response).to have_http_status(200)
    end
  end

  # describe "POST /" do
  #   it 'creates a post' do
  #     user = create(:user)
  #     sign_in(user)

  describe "POST /" do
    it "responds with 200" do
      

      expect(response).to have_http_status(:ok)
      #@post = Post.create(post_params)
    #current_user.posts.create(post_params)
      # post :create, params: { post: { message: "Hello, world!" } }
      # expect(response).to redirect_to(posts_url)
    end

    it "creates a post" do
      post :create, params: { post: { message: "Hello, world!" } }
      expect(Post.find_by(message: "Hello, world!")) == true 
    end
  end

  describe "GET /" do
    it "responds with 200" do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /destroy" do
    it "responds with 200" do
      post = Post.create{ "Hello, world!" }
      post.destroy
      expect(Post.find_by(message: "Hello, world!")).not_to be
    end
  end
end
#