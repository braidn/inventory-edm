class User < ActiveRecord::Base
  has_many :items
  attr_accessible :active, :first_name, :last_name
end
