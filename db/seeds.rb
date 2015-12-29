# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

# Create Users
5.times do
  user = User.create!(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )

  user.save!
end

mak = User.create!(
  username: 'Mak Pande',
  email: 'makpande2015@gmail.com',
  password: 'helloworld'
)

mak.save!

users = User.all
puts "#{User.count} users created"

50.times do
    post = Post.create!(
      user:   users.sample,
      title:  Faker::Lorem.sentence,
      body:   Faker::Lorem.paragraph,
      image_url: Faker::Avatar.image("my_post_image", "50x50", "jpg")
    )
end
