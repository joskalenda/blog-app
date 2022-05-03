class Like < ApplicationRecord
  after_save :increment_likes_counter
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post
  
  def increment_likes_counter
    post.increment!(:likes_counter)
  end
  
  private :increment_likes_counter

end
