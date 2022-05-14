# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# lorem40 = 'Forest located on The Nature Conservancy Cascade Head Preserve, north of Lincoln City, Oregon. Our Mission. Conserving the lands and waters on which all life.'
image1 = 'https://media.istockphoto.com/photos/road-picture-id467172076?s=612x612'
image2 = 'https://media.istockphoto.com/photos/road-picture-id467172076?s=612x612'
image3 = 'https://media.istockphoto.com/photos/road-picture-id467172076?s=612x612'
image4 = 'https://media.istockphoto.com/photos/road-picture-id467172076?s=612x612'

# jos = User.create!(name: 'Maxim', photo: image2 , bio: lorem40, posts_counter: 0)
# topaz = User.create!(name: 'Neutral', photo: image3, bio: lorem40, posts_counter: 0)
# karis = User.create!(name: 'Ben', photo: image4 , bio: lorem40, posts_counter: 0)
# betty = User.create!(name: 'Jemi', photo: image1 , bio: lorem40, posts_counter: 0)

# post1 = jos.posts.create!(title: 'Cats and Dogs', text: 'this is first post about cats and dogs!', comments_counter: 0, likes_counter: 0)
# jos.posts.create!(title: 'Never ending fun', text: 'this is second post but I don\'t think I should create another post again', comments_counter: 0, likes_counter: 0)
# post3 = jos.posts.create!(title: 'The last person on the train', text: 'this is my third post about how I will never create another post in my life', comments_counter: 0, likes_counter: 0)
# post4 = jos.posts.create!(title: 'My Last Post', text: 'this is my absolute final post ya hear!', comments_counter: 0, likes_counter: 0)

# jos.comments.create!(text: 'really nice post Michael', post: post1)
# topaz.comments.create!(text: 'Well Done 👏👏👏', post: post1)
# karis.comments.create!(text: 'This is a great Read', post: post1)
# karis.comments.create!(text: 'Love 💓 it!!!', post: post1)
# topaz.comments.create!(text: 'Love 💕 it Aswell !!!', post: post4)
# jos.comments.create!(text: 'This is a terific post ', post: post4)
# jos.comments.create!(text: 'We still need one more post😢', post: post3)

User.destroy_all

lorem_one = '_One_Donec dapibus consequat tellus a pulvinar. Fusce auctor rhoncus orci a semper. Sed interdum accumsan
  esse quia in corrupti doloremque laborum, omnis quae placeat facere aliquid amet excepturiquia in corrupti'

user1 = User.create!(name: 'Admin', photo: image1, bio: lorem_one, posts_counter: 0,
email: 'admin@gmail.com', password: '1234567890', role: 'admin')
user1.skip_confirmation!
user1.save!

user2 = User.create!(name: 'Not admin', photo: image2, bio: lorem_one, posts_counter: 0,
  email: 'notadmin@mail.com', password: '1234567890', role: '')
user2.skip_confirmation!
user2.save!
# user3 = User.create!(name: 'Julia Lisa', photo: image3, bio: lorem_one, posts_counter: 0,
#   email: 'julia@mail.com', password: '123456')
# user4 = User.create!(name: 'Gomez lucky', photo: image4, bio: lorem_one, posts_counter: 0,
#   email: 'gomez@mail.com', password: '123456')
# user5 = User.create!(name: 'Barry Alen', photo: image5, bio: lorem_one, posts_counter: 0,
#   email: 'barry@mail.com', password: '123456')
