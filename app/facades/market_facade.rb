class MarketFacade
  def get_markets
    market_data.map do |data|
      Market.new(data)
    end
  end

  private

  def service 
    @_service ||= MarketService.new
  end

  def market_data
    @_market_data ||= service.all_markets[:data]
  end
end