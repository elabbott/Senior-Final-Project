class Franchise < ActiveRecord::Base
  has_many :meal_lists
  has_many :orders
end
