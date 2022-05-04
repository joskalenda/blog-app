require 'rails_helper'

RSpec.describe Comment, type: :model do
  it 'Should create comment' do
    user = User.new(name: 'Jos', photo: '', bio: 'Developer', posts_counter: 0)
    post = Post.new(title: 'Coding war', text: 'Learn how to code', user: user)
    post.save!

    comment_creator = User.new(name: 'Ben', photo: '', bio: 'Fan', posts_counter: 0)
    post.comments.create!(text: 'i love coding, thanks Jos', user: comment_creator)
    post.comments.create!(text: 'Would you like to share some?', user: comment_creator)
    expect(post.comments.length).to eql(2)
  end
end
