class Like < ApplicationRecord
  belongs_to :user
  # counter_cache: true でいいね数を自動カウント
  belongs_to :post, counter_cache: true
  validates_uniqueness_of :post_id, scope: :user_id
end