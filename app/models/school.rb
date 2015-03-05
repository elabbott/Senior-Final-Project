class School < ActiveRecord::Base
  belongs_to :franchise
  has_many :children
end
