class Post < ApplicationRecord
  belongs_to :cuty

  validates :cuty_id, presence: true
end
