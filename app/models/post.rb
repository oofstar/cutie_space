class Post < ApplicationRecord
  belongs_to :cuty

  validates :body, presence: true
  validates :cuty_id, presence: true
end
