class TwoUsersChatSerializer < ActiveModel::Serializer
  attributes :id
  has_one :follow
  has_many :two_users_messages
end
