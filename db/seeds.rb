# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

CSV.foreach('db/condition.csv', headers: true) do |row|
  Condition.create(name: row[1])
end

CSV.foreach('db/kampo.csv', headers: true) do |row|
  Kampo.create(name: row[1], description: row[2], condition_id: row[3])
end

CSV.foreach('db/question.csv', headers: true) do |row|
  Question.create(content: row[1], condition_id: row[2], kampo_id: row[3])
end

CSV.foreach('db/shoyaku.csv', headers: true) do |row|
  Shoyaku.create(name: row[1], picture_file: row[2], description: row[3])
end

CSV.foreach('db/kampo_shoyaku_relation.csv', headers: true) do |row|
  KampoShoyakuRelation.create(kampo_id: row[1], shoyaku_id: row[2])
end
