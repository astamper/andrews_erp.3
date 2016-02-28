class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_items
  validates_formatting_of :zip, using: :us_zip
end
