class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
    render json: @coupons
  end

  def create
    coupon = params['coupon']
    @coupon = Coupon.new do |c|
      c.Coupon_code = coupon['Coupon_code']
      c.Expiration_date = coupon['Expiration_date']
      c.Used = coupon['Used']
      c.Use_date = coupon['Use_date']
      c.Room_id = coupon['Room_id']
      c.Resturant_access = coupon['Resturant_access']
      c.Valid_for = coupon['Valid_for']
      c.Client_id = coupon['Client_id']
    end

    @coupon.save
  end

  def delete
    coupon = params['coupon']
    @coupon = Coupon.find_by(:Coupon_code => coupon['Coupon_code'])

    if !@coupon.nil?
      Coupon.destroy(@coupon.id)
    end
  end

  def update
    coupon = params['coupon']
    @coupon = Coupon.find_by(:Coupon_code => coupon['Coupon_code'])

    if !@coupon.nil?
      Coupon.update(@coupon.id, params['update_coupon'])
    end
  end
end
