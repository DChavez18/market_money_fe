class MarketFacade
  def get_markets
    market_data.map do |data|
      Market.new(data)
    end
  end

  def get_market(id)
    Market.new(one_market_data(id))
  end

  private

  def service 
    @_service ||= MarketService.new
  end

  def market_data
    @_market_data ||= service.all_markets[:data]
  end

  def one_market_data(id)
    @_one_market_data ||= service.get_one_market(id)[:data]
  end
end