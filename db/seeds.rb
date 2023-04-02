require 'faker'

# 50.times do |i|
#   Biblioteka.create(
#     name: "Library #{i}",
#     address: "Address #{i}"
#   )
# end
#
# 50.times do |i|
#   Author.create(
#     name: Faker::Book.unique.author,
#   )
# end
#
# 50.times do |i|
#   Book.create(
#     title: Faker::Book.unique.title,
#     isbn: Faker::Number.unique.number,
#     published_date: Faker::Date.between(from: '1990-01-01', to: '2022-12-31'),
#     biblioteka_id: Biblioteka.all.sample.id)
# end
#
# 50.times do |i|
#   sql = "INSERT INTO genres (name) VALUES (#{Faker::Book.unique.genre})"
#   ActiveRecord::Base.connection.execute(sql)
# end
#
# 50.times do |i|
#   sql = "INSERT INTO reader_cards (biblioteka_id, user_id, issued_date, return_date) VALUES (#{Biblioteka.all.sample.id}, #{User.all.sample.id}, #{Faker::Date.between(from: '2020-01-01', to: '2022-12-31')}, #{Faker::Date.between(from: '2023-01-01', to: '2024-12-31')} )"
#   ActiveRecord::Base.connection.execute(sql)
# end
#
# 50.times do |i|
#   sql = "INSERT INTO users (name, email) VALUES (#{Faker::Name.unique.name}, #{Faker::Internet.unique.email})"
#   ActiveRecord::Base.connection.execute(sql)
# end
sql = ""
puts "Seed data has been created successfully"
