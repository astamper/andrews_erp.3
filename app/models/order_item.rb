class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :stock
  belongs_to :stocktype
end
