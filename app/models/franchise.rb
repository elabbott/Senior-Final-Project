class Franchise < ActiveRecord::Base
  has_many :schools
  has_many :meals
end
