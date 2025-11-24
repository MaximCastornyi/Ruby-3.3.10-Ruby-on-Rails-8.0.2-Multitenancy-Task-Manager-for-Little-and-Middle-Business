# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create!(
  full_name: "admin",
  email: "admin@admin.com",
  admin: true,
  password: "123456789"
)
# projects = 20.times.map do
#   Project.create!(name: Faker::Educator.unique.subject, user: user)
# end

# projects.each do |project|
#   20.times do
#     Task.create!(name: "read #{Faker::ProgrammingLanguage.unique.name}", project: project, priority: rand(2..0), due_date: Faker::Date.forward(days: 23))
#   end
# end
