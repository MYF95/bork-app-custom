User.create!(name: "Ponsan", email: "ponsan@bork.com", password: "chicken", password_confirmation: "chicken", admin: true, activated: true, activated_at: Time.zone.now)
User.create!(name: "Tsukki", email: "tsukki@bork.com", password: "chicken", password_confirmation: "chicken", admin: true, activated: true, activated_at: Time.zone.now)
User.create!(name: "Pooky", email: "pooky@bork.com", password: "chicken", password_confirmation: "chicken", admin: true, activated: true, activated_at: Time.zone.now)
User.create!(name: "Mikota", email: "myf1995@gmail.com", password: "chicken", password_confirmation: "chicken", admin: true, activated: true, activated_at: Time.zone.now)
User.create!(name: "Example User", email: "example@railstutorial.org", password: "foobar", password_confirmation: "foobar", activated: true, activated_at: Time.zone.now)

95.times do |n|
  name = Faker::LeagueOfLegends.champion
  email = "example-#{n+1}@bork.com"
  password = "password"
  User.create!(name: name, email: email, password: password, password_confirmation: password, activated: true, activated_at: Time.zone.now)
end

users = User.order(created_at: :desc).take(95)

10.times do
  users.each do |user|
    content = Faker::LeagueOfLegends.quote
    user.microposts.create!(content: content)
  end
end

# Following relationships

users = User.all
user = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }