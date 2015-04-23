class Meal < ActiveRecord::Base
  validates :name, :description, :calories, :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :name, uniqueness: true
  
  belongs_to :order
end
