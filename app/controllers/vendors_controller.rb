class VendorsController < ApplicationController
  def show
    @vendor = MarketFacade.new.get_vendor(params[:id])
  end
end