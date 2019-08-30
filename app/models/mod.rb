class Mod < ApplicationRecord
  has_many :users
  has_many :mod_events
end
