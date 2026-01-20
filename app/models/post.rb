class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  
  def self.ransackable_attributes(auth_object = nil)
    ["title", "category", "created_at", "likes_count"]
  end
end