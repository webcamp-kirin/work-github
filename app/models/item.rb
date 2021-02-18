class Item < ApplicationRecord
 attachment :image
 belongs_to :genre
 has_many :cart_items, dependent: :destroy
 has_many :orders, through: :order_details
 has_many :order_details
end
