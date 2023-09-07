class MarketsController < ApplicationController
  def index
    @markets = MarketFacade.new.get_markets
  end
end