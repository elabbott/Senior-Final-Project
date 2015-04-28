class Franchise < ActiveRecord::Base
  validates :name, :school_id, presence: true
  
  has_many :meal_lists
  has_many :orders
end
