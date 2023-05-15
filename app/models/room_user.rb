class RoomUser < ApplicationRecord
  belongs_to :room       #READMEからアソシエーションをコピペ
  belongs_to :user
end
