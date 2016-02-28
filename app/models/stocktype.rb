class Stocktype < ActiveRecord::Base
  has_many :order_items
  has_many :stocks
  has_many :batches
end
