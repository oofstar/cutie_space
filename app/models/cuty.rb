class Cuty < ApplicationRecord
  mount_uploader :cutie_pic, CutiePicUploader

  belongs_to :user
  has_many :posts

  validates :name, presence: true
  validates :cutie_pic, presence: true
end
