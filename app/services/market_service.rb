class MarketService
  def all_markets
    get_url("api/v0/markets")
  end

  def get_one_market(id)
    get_url("api/v0/markets/#{id}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "http://localhost:3000/") do |faraday|
      faraday.headers = { 'CONTENT_TYPE': 'application/json' }
    end
  end
end