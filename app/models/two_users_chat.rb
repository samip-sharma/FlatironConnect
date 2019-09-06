class TwoUsersChat < ApplicationRecord
  belongs_to :follow
  has_many :two_users_messages
end
