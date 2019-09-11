class UserSerializer < ActiveModel::Serializer
  attributes :id ,:name , :user_name ,:admin, :working , :working_at, :active_user
  has_many :tweets
  has_many :blogs
  has_one :user_mod
  has_one :mod
  has_one :image
end
