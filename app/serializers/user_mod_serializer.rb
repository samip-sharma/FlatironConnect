class UserModSerializer < ActiveModel::Serializer
  attributes :id , :accepted
  belongs_to :user
  belongs_to :mod
end
