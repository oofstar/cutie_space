class User < ApplicationRecord
  has_many :cuties

  validates :username, presence: true
  validates :password, presence: true
end
