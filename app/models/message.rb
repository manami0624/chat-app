class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  validates :content, presence:true  #空の投稿ができないように設定
end
