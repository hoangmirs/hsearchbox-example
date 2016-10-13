puts "Creating users...."
10.times do |n|
  fullname = Faker::Name.name
  username = Faker::Internet.user_name
  email = Faker::Internet.email
  avatar = "/assets/user-#{n%6 + 1}"
  User.create! fullname: fullname, username: username, email: email, avatar: avatar
end
puts "Created users!"
puts "Creating badges...."
10.times do |n|
  name = Faker::Book.title
  image = "/assets/user-#{n%6 + 1}"
  user_id = rand(User.count) + 1
  Badge.create! name: name, image: image, user_id: user_id
end
puts "Created badges!"
