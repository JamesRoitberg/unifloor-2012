class Order < ActiveRecord::Base
  belongs_to :costumer
  belongs_to :user
  belongs_to :representative
end
