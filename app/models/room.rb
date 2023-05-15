class Room < ApplicationRecord
  has_many :room_users       #READMEからアソシエーションをコピペ
  has_many :users, through: :room_users
end
