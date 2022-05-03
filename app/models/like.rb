class Like < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post
  after_save :increment_likes_counter
  
  def increment_likes_counter
    post.increment!(:likes_counter)
  end
  
  private :increment_likes_counter

end
