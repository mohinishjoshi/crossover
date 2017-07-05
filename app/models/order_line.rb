class OrderLine < ActiveRecord::Base
  belongs_to :order
  has_one :product
  validates_numericality_of :qty, :only_integer => true
  validates_numericality_of :unit_price, :total_price
end
