class TwoUsersMessageSerializer < ActiveModel::Serializer
  attributes :id, :text, :sender
  # belongs_to :user
end
