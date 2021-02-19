class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :shippings, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  
  enum is_deleted:{
    有効: 0,
    退会: 1
  }
end
