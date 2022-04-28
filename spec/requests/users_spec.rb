require "rails_helper"

RSpec.describe "Users controller", :type => :request do

  it 'should return 200 response' do
    get "/users"
    expect(response).to have_http_status(200)
  end

  it "This should redirect to all users page" do
    get "/users"
    expect(response).to render_template(:index)
    expect(response.body).to include("ALL USERS")
  end

  it "does not render a different template" do
    get "/users"
    expect(response).to_not render_template(:show)
  end

  it "Should test for single user status" do
    get "/users/0"
    expect(response.body).to include("ONE SINGLE USER")
    expect(response).to have_http_status(200)
    expect(response).to render_template(:show)
  end

end