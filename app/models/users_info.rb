class UsersInfo < ApplicationRecord
  belongs_to :job_m
  belongs_to :position_m
  
  has_secure_password
  
  
  
  #rails generate migration add_password_digest_to_hoges password_digest:string
  
  AGES = [[Constants::NOT_SET, 0], [Constants::TEENS, 1], [Constants::TWENTIES, 2],
      [Constants::THIRTIES, 3], [Constants::FORTIES, 4], [Constants::FIFTIES, 5], [Constants::SIXTIES, 6]]
  
end
