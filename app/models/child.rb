class Child < ActiveRecord::Base
  validates :name, :dob, presence: true
end
