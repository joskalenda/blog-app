require 'rails_helper'

RSpec.describe 'Hello world', type: :feature do
  describe ' user index index page' do
    before(:each) do
      @user1 = User.create!(name: 'User1', photo: '', bio: '', created_at: Time.now, role: 'admin',
                            confirmed_at: Time.now, email: 'user1@gmail.com', password: '000000')
      @user2 = User.create!(name: 'User2', photo: '', bio: '', created_at: Time.now, role: 'admin',
                            confirmed_at: Time.now, email: 'user2@gmail.com', password: '111111')
      visit users_path
    end

    it 'Should see the username of all other users' do
      expect(page).to have_content(@user1.name)
      expect(page).to have_content(@user2.name)
    end

    it 'Should see all image for all users' do
      images = page.has_selector?('img', count: 2)
      # users_profile = page.all('ul li')
      expect(images).to be true
    end

    it "Should see each user's post number" do
      number_posts = page.all('ul li')
      expect(number_posts[2]).to have_content('Post:0')
      expect(number_posts[2]).to have_content(@user2.posts_counter)
    end

    it 'Should redirect to a user page' do
      click_link(@user1.name)
      expect(page).to have_current_path user_path(@user1)
      visit users_path
      click_link(@user2.name)
      expect(page).to have_current_path user_path(@user2)
    end
  end
end