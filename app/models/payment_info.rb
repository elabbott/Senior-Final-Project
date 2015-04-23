class PaymentInfo < ActiveRecord::Base
  validates :name, :cnum, :c_type, :expdate, :cvv, presence: true
  validates :cnum, :cvv, uniqueness: true
  validates :cnum, length: { is: 16 }
end
