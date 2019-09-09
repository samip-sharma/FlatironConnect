class ModTweet < ApplicationRecord
  belongs_to :user
  belongs_to :mod
end
