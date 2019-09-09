class ModTweetSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :user
  has_one :mod
end
