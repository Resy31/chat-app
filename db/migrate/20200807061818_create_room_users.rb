class CreateRoomUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :room_users do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      #外部キーをカラムに追加する型、foreign_key: trueで他テーブルの情報を参照できる
      t.timestamps
    end
  end
end
