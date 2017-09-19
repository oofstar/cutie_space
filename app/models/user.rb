class User < ApplicationRecord
  has_many :cuties

  validates :first_name, presence: true
  validates :last_name, presence: true
  
  validates :username, presence: true
  validates :password, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
