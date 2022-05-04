require 'rails_helper'

RSpec.describe Like, type: :model do
  it 'Should add some likes to posts and comments' do
    like = Like.new
    like.build_user(name: 'Kalenda')
    like.build_post(text: 'Happy')
    expect(like).to be_valid
  end

  it 'Should increment likes_counter' do
    user = User.new(name: 'Topaz')
    user2 = User.create!(name: 'Mercure')
    post = user2.posts.create!(title: 'Enjoy coding book', text: 'Learn how to code')
    post.likes.create!(user: user)
    expect(post.likes_counter).to eql(1)
  end
end
