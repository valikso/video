namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    99.times do |n|
      first_name  = Faker::Name.name
      last_name = "Kurochkin#{n+1}"
      email = "example-#{n+1}@testtest.com"
      password  = "password"
      age = "20"
      address = "Persha st."
      country = "UA"
      sex = "male"
      User.create!(first_name: first_name,
                    last_name: last_name,
                   email: email,
                   age: age,
                   sex: sex,
                   country: country,

                  address: address,
                   password: password,
                   password_confirmation: password)
    end
  end
end
