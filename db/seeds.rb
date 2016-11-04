# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  mail: Rails.application.secrets.user_mail,
  password: Rails.application.secrets.user_password,
  password_confirmation: Rails.application.secrets.user_password,
  administrator: true
)

Article.create(
  index: "テスト投稿",
  about: "テスト投稿"
)


