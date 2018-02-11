# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   coding: utf-8
require "csv"

CSV.foreach('db/sample/seed.csv') do |row|
UsersInfo.create(:id => row[0], :password => row[1], :user_name => row[2], :job_id =>row[3],
:position_id => row[4], :age => row[5], :is_deleted => row[6], :address => row[7], :version => row[8])
end
