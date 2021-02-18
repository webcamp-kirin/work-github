class Shipping < ApplicationRecord
  belongs_to :customers, dependent: :destroy
end
