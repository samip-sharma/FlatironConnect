class User < ApplicationRecord
  has_many :blogs
  has_one :user_mod
  has_one :mod , through: :user_mod

 has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
 has_many :followers, through: :following_users
 has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
 has_many :followees, through: :followed_users

 has_secure_password

end
