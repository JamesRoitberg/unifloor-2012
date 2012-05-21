class Product < ActiveRecord::Base
  belongs_to :category
  has_one :stock
end
