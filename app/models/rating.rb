class Rating < ApplicationRecord
  belongs_to :companies_info
  belongs_to :users_info
end
