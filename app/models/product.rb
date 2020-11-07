class Product < ApplicationRecord


  belongs_to :category
  #以下のコメントアウトはのちの作業時に使用する。
  belongs_to :seller, class_name: User, foreign_key: user_id
  belongs_to :buyer, class_name: User, foreign_key: buyer_id, optional: true
 
  # has_many :order_histories, dependent: :destroy
  # has_many :comments, dependent: :destroy
  # has_many :likes, dependent: :destroy
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :condition
  belongs_to_active_hash :delivery_charge
  belongs_to_active_hash :shipping_day

  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true


end