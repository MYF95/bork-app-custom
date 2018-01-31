User.create!(name: "Ponsan", email: "ponsan@bork.com", password: "chicken", password_confirmation: "chicken", admin: true)
User.create!(name: "Tsukki", email: "tsukki@bork.com", password: "chicken", password_confirmation: "chicken", admin: true)
User.create!(name: "Pooky", email: "pooky@bork.com", password: "chicken", password_confirmation: "chicken", admin: true)
User.create!(name: "Mikota", email: "myf1995@gmail.com", password: "chicken", password_confirmation: "chicken", admin: true)
User.create!(name: "Example User", email: "example@railstutorial.org", password: "foobar", password_confirmation: "foobar")

95.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name: name, email: email, password: password, password_confirmation: password)
end