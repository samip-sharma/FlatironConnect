class UserSerializer < ActiveModel::Serializer
  attributes :id ,:name , :user_name
  has_one :mod
end
