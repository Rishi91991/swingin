class Coupon < ActiveRecord::Base
  attr_accessible :coupon_code

  validates :coupon_code, uniqueness: true

  validates :coupon_code, presence: true
end
