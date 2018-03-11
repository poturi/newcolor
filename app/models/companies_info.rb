class CompaniesInfo < ApplicationRecord
  belongs_to :users_info
  belongs_to :job_m
end
