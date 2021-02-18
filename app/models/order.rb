class Order < ApplicationRecord
  belongs_to :customers, dependent: :destroy
end
