class Stock < ActiveRecord::Base
  belongs_to :stocktype
  has_many :order_items
end
