# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   coding: utf-8
require "csv"

# job_ms
CSV.foreach('db/sample/job_ms.csv') do |row|
    JobM.create(:id => row[0] ,:job_name => row[1], :is_deleted => row[2])
end

# position_ms
CSV.foreach('db/sample/position_ms.csv') do |row|
    PositionM.create(:id => row[0] ,:position_name => row[1], :is_deleted => row[2])
end

# users_infos
CSV.foreach('db/sample/users_infos.csv') do |row|
    UsersInfo.create(:id => row[0] ,:password => row[1], :user_name => row[2], :job_m_id => row[3], :position_m_id  => row[4],
    :age => row[5], :is_deleted => row[6], :address => row[7], :version => row[8])
end