class Mod < ApplicationRecord
  has_many :user_mods
  has_many :users , through: :user_mods 
  has_many :mod_events
end
