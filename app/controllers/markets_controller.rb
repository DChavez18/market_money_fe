class MarketsController < ApplicationController
  def index
    @markets = MarketFacade.new.get_markets
  end

  def show
    @market = MarketFacade.new.get_market(params[:id])
  end
end