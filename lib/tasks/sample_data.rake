namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    # 99.times do |n|
    #   first_name  = Faker::Name.name
    #   last_name = "Kurochkin#{n+1}"
    #   email = "example-#{n+1}@testtest.com"
    #   password  = "password"
    #   age = "20"
    #   address = "Persha st."
    #   country = "UA"
    #   sex = "male"
    #   User.create!(first_name: first_name,
    #                 last_name: last_name,
    #                email: email,
    #                age: age,
    #                sex: sex,
    #                country: country,
    #                address: address,
    #                password: password,
    #                password_confirmation: password)
    # end
    50.times do |f|
      title = Faker::Name.name
      description =  "Lorem Ipsum - это текст-рыба, часто используемый
      в печати и вэб-дизайне. Lorem Ipsum является стандартной рыбой для
      текстов на латинице с начала XVI века. В то время некий безымянный
      печатник создал большую коллекцию размеров и форм шрифтов, используя
       Lorem Ipsum для распечатки образцов. Lorem Ipsum не только успешно
       пережил без заметных изменений пять веков, но и перешагнул в электронный
        дизайн. Его популяризации в новое время послужили публикация листов
        Letraset с образцами Lorem Ipsum в 60-х годах и, в более недавнее время,
        программы электронной вёрстки типа Aldus PageMaker, в шаблонах которых
        используется Lorem Ipsum."
      author = Faker::Name.name
      country = "USA"
      all_tags = "Комедія"
      year = "2001#{f+1}"
      Movie.create!(title: title,
                    description: description,
                    author: author,
                    all_tags: all_tags,
                    country: country,
                    year: year)

    end
  end
end
