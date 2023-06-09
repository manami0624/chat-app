class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence:true, unless: :was_attached?  #空の投稿ができないように設定

  def was_attached?
    self.image.attached?
  end
end
