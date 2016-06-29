# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
CSV.foreach(Rails.root.join("db/seeds_data/items.csv"), headers: true) do |row|
  Item.find_or_create_by(nome: row[0],
    release_date: row[1],
    price: row[2],
    description: row[3],
    img_url: row[4])
end
