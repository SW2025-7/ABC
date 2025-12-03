class User < ApplicationRecord
    has_many :tweets
    has_many :likes,dependent: :destroy
    has_many :like_tweets,through: :likes,source: :tweet
    has_one :profile
    
    has_secure_password
end
