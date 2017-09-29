class Cuty < ApplicationRecord

  mount_uploader :cutie_pic, CutiePicUploader

  has_many :friender_friends, foreign_key: :friendee_id, class_name: "Friendship"
  has_many :friendee_friends, foreign_key: :friender_id, class_name: "Friendship"

  has_many :frienders, through: :friender_friends, source: :friender
  has_many :friendees, through: :friendee_friends, source: :friendee

  belongs_to :user
  has_many :posts

  validates :name, presence: true
  validates :cutie_pic, presence: true

  def friendslist
    friends = []
    self.frienders.each do |friend|
      if !friends.include?(friend)
        friends << friend
      end
    end

    self.friendees.each do |friend|
      if !friends.include?(friend)
        friends << friend
      end
    end
    
    return friends
  end


end
