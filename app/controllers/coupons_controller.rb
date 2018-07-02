class CouponsController < ApplicationController
  before_action :find_coupon, only: [:show, :edit, :update, :destroy]

  def index
    @coupons = Coupon.all
  end

  def show

  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.create(fetch_params)
    # need to use CREATE in order to save instance to the DB once it's created
    redirect_to coupon_path(@coupon)
  end

  private

  def find_coupon
    @coupon = Coupon.find(params[:id])
    # find an instnace in the DB based on it's ID
  end

  def fetch_params
    params.require(:coupon).permit(:coupon_code, :store)
  end

end
