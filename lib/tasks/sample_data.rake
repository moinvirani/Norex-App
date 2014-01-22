namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(email: "example@norex.org",
                 username: "simon"
                 password: "foobar",
                 password_confirmation: "foobar")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@norex.org"
      password  = "password"
      User.create!(email: email,
                   username: username,
                   password: password,
                   password_confirmation: password)
    end
  end
end