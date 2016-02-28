class Stock < ActiveRecord::Base
  belongs_to :stocktype
  has_many :order_items
  has_and_belongs_to_many :recipes
end
