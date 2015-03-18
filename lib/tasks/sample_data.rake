namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Alex",
      email: "temirov01@gmail.com",
      password: "qwerty",
      password_confirmation: "qwerty", 
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end