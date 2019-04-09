# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: 'suman.panda@mindfiresolutions.com', password: 'password')
user.articles.create!(title: "RSpec", body: "RSpec is a unit test framework for the Ruby programming language. RSpec is different than traditional xUnit frameworks like JUnit because RSpec is a Behavior driven development tool.")
user.articles.create!(title: "Capybara", body: "Capybara is a web-based test automation software that simulates scenarios for user stories and automates web application testing for behavior-driven software development. It is written in the Ruby programming language. Capybara can mimic actions of real users interacting with web-based applications.")
