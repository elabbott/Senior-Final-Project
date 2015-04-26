class MealList < ActiveRecord::Base
has_many :meals
belongs_to :franchise
end
