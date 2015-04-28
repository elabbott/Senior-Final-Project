class Child < ActiveRecord::Base
  validates :name, :dob, :school_id, presence: true
end
