class Order < ActiveRecord::Base
  has_many :order_lines
  has_many :product, through: :order_lines
  belongs_to :customer
end
