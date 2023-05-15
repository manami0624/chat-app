#usersテーブルとroomsテーブルの中間テーブル

class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, null: false, foreign_key: true  #roomキーのカラムを追加
      t.references :user, null: false, foreign_key: true  #userキーのカラムを追加
      t.timestamps
    end
  end
end
