class Order < ActiveRecord::Base
  attr_accessible :price, :customer_id
  belongs_to :customer
  
end
