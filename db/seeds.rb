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
#CSV.foreach('db/sample/users_infos.csv') do |row|
#    UsersInfo.create(:id => row[0] ,:password => row[1], :user_name => row[2], :job_m_id => row[3], :position_m_id  => row[4],
#    :age => row[5], :is_deleted => row[6], :address => row[7], :version => row[8])
#end

# companies_infos
#CSV.foreach('db/sample/companies_infos.csv') do |row|
#    CompaniesInfo.create(:id => row[0],:company_name => row[1] ,:users_info_id => row[2], :job_m_id => row[3], :is_deleted => row[4])
#end

# ratings
#CSV.foreach('db/sample/ratings.csv') do |row|
#    Rating.create(:id => row[0] ,:companies_info_id => row[1], :users_info_id => row[2], :money => row[3], :skill  => row[4],
#    :work => row[5], :age => row[6], :is_deleted => row[7])
#end
