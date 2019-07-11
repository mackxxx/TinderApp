class User < ApplicationRecord

  # ==========ここから追加する==========
  has_many :chat_messages
  has_many :chat_room_users
  # ==========ここまで追加する========

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  mount_uploader :img_name, ImgNameUploader

  enum sex: { 男: 0, 女: 1 }
end
