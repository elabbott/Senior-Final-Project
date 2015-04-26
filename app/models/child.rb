class Child < ActiveRecord::Base
  validates :name, :dob, presence: true
  belongs_to :user
  belongs_to :school
end
