class User < ApplicationRecord
  has_many :cuties

  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"
  has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"
  has_many :followers, through: :follower_follows, source: :follower
  has_many :followees, through: :followee_follows, source: :followee

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :email,
    format: { with: /\A.+@.+\..+\z/i }
  validates :encrypted_password,
    length: { minimum: 6 }
  validates :sign_in_count, presence: true,
    numericality: { greater_than_or_equal_to: 0, only_integer: true }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
