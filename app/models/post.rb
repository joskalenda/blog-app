class Post < ApplicationRecord
  after_save :increment_posts_counter
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def latest_five_comment
    comments.order(created_at: :desc).limit(5)
  end

  def increment_posts_counter
    user.increment!(:posts_counter)
  end

  private :increment_posts_counter
end
