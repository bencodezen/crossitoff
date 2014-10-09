require 'faker'

# Create users
5.times do
  user = User.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end

#Create admin
admin = User.new(
  name:  'Admin User',
  email: 'admin@example.com',
  password: 'helloworld'
)
admin.skip_confirmation!
admin.save!

users = User.all

# Create items
50.times do
  Item.create!(
      title: Faker::Lorem.sentence,
      user: users.sample
  )
end

puts "Seeds finished."
puts "#{User.count} users created."
puts "#{Item.count} items created."
