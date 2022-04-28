require "rails_helper"

RSpec.describe "Posts controller", :type => :request do

  before(:each) { get user_posts_path user_id: 0 }
  it 'should return correct response' do
    expect(response).to have_http_status(200)
  end

  it "This should render one single user posts page" do
    expect(response).to render_template(:index)
    expect(response.body).to include("THIS SINGLE USER POSTS")
  end
  it "This should render one single user single post page" do
    get "/users/0/posts/0"
    expect(response).to render_template(:show)
    expect(response.body).to include("THIS SINGLE USER SELECTED POST")
  end

end