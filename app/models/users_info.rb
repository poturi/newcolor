class UsersInfo < ApplicationRecord
  belongs_to :job_m
  belongs_to :position_m
  
  AGES = [[NOT_SET, 0], [TEENS, 1], [TWENTIES, 2], [THIRTIES, 3], [FORTIES, 4], [FIFTIES, 5], [SIXTIES, 6]]
end
