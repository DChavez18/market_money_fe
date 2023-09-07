class MarketService
  def all_markets
    get_url("api/v0/markets")
  end
end