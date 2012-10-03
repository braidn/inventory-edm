class Item < ActiveRecord::Base
  belongs_to :user
  attr_accessible :backup, :kind, :location, :name, :os, :purchaseDate, :retireDate, :serial, :user_id
end
