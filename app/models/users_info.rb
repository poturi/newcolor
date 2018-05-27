class UsersInfo < ApplicationRecord
  belongs_to :job_m
  belongs_to :position_m
  
  AGES = [[Constants::NOT_SET, 0], [Constants::TEENS, 1], [Constants::TWENTIES, 2],
      [Constants::THIRTIES, 3], [Constants::FORTIES, 4], [Constants::FIFTIES, 5], [Constants::SIXTIES, 6]]

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :user_name, presence: {message: 'は必須項目です。'}, length: {maximum: 20, message: 'は20文字まで入力可能です。'}
  validates :address, presence: {message: 'は必須項目です。'}, format: {with: VALID_EMAIL_REGEX, message: 'として不正です。形式を確認して下さい。'}
  #年代は今後増えたり減ったりする気がしないので、固定値で範囲を指定している
  validates :age, presence: {message: 'は必須項目です。'}, numericality: {greater_than_or_equql_to: 0, less_than_or_equal_to: 6, message: 'のvalue値を開発者ツールで書き換ましたか？'}
  validates :job_m_id, presence: {message: 'は必須項目です。'}, numericality: {message: 'のvalue値を開発者ツールで書き換ましたか？'}, job: true
  validates :position_m_id, presence: {message: 'は必須項目です。'}, numericality: {message: 'のvalue値を開発者ツールで書き換ましたか？'}, position: true
  validates :password, presence: {message: 'は必須項目です。'}, length: {maximum: 60, message: 'は60文字まで入力可能です。'}

end
