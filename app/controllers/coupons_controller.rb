class CouponsController < ApplicationController

  def new
    @coupon = Coupon.new
  end

  def create
    user_params
    @coupon = Coupon.create(params["coupon"])
    redirect_to coupon_path(@coupon)
  end

  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  private

  def user_params
   params.permit!
  end

end
