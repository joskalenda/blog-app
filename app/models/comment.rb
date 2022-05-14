class Comment < ApplicationRecord
  validates_presence_of :text
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post
  after_save :increment_comments_counter

  def increment_comments_counter
    post.increment!(:comments_counter)
  end

  private :increment_comments_counter
end
