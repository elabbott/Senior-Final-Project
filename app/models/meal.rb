class Meal < ActiveRecord::Base
  
  mount_uploader :image_url, PictureUploader
  
  validates :name, :description, :calories, :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :name, uniqueness: true
  
  belongs_to :order
  belongs_to :meal_lists
end
