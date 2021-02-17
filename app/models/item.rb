class Item < ApplicationRecord
 attachment :image
 belongs_to :genre, dependent: :destroy
end
