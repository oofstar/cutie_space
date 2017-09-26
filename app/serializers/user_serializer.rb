class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :team_name

  has_many :cuties
end
