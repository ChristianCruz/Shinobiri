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
   user = User.new(
     username:     Faker::Internet.user_name,
     email:    Faker::Internet.email,
     password: Faker::Lorem.characters(10)
   )
   user.skip_confirmation!
   user.save!
 end
 users = User.all
 
 # Note: by calling `User.new` instead of `create`,
 # we create an instance of User which isn't immediately saved to the database.

 # Create Categories

15.times do 
  Category.create!(
    name: Faker::Lorem.sentence
  )
end
categories = Category.all
 
 
 # The `skip_confirmation!` method sets the `confirmed_at` attribute
 # to avoid triggering an confirmation email when the User is saved.
 
 # The `save` method then saves this User to the database.

 # Create Posts
 50.times do
   post = Post.create!(
     user: users.sample,
     category: categories.sample,
     product:  Faker::Lorem.sentence,
     description:   Faker::Lorem.paragraph,
     price: Faker::Commerce.price,
   )

   post.update_attributes!(created_at: rand(10.minutes .. 1.year).ago)
   post.update_rank
 end
 posts = Post.all
 
 # Create Comments
 100.times do
   Comment.create!(
     # user: users.sample,
     post: posts.sample,
     user: users.sample,
     body: Faker::Lorem.paragraph
   )
 end

 # Create an admin user
 admin = User.new(
   username:     'administrator',
   email:    'admin@example.com',
   password: 'helloworld',
   role:     'admin'
 )
 admin.skip_confirmation!
 admin.save!
 
 # Create a moderator
 moderator = User.new(
   username:     'Moderator',
   email:    'moderator@example.com',
   password: 'helloworld',
   role:     'moderator'
 )
 moderator.skip_confirmation!
 moderator.save!
 
 # Create a member
 member = User.new(
   username:     'Member',
   email:    'member@example.com',
   password: 'helloworld'
 )
 member.skip_confirmation!
 member.save!
 
 puts "Seed finished"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"