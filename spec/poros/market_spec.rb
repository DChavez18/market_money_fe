require "rails_helper"

RSpec.describe Market do
  it "exists and has attributes" do
    data =    data = {
      attributes: {
        id: 1,
        name: 'Sample Market',
        street: '123 Main St',
        city: 'Cityville',
        county: 'County County',
        state: 'ST',
        zip: '12345',
        lat: 42.12345,
        lon: -73.98765,
        vendor_count: 10
      }
    }

    market_1 = Market.new(data)

    expect(market_1.id).to eq(1)
    expect(market_1.name).to eq("Sample Market")
    expect(market_1.street).to eq("123 Main St")
    expect(market_1.city).to eq("Cityville")
    expect(market_1.county).to eq("County County")
    expect(market_1.state).to eq("ST")
    expect(market_1.zip).to eq("12345")
    expect(market_1.lat).to eq(42.12345)
    expect(market_1.lon).to eq(-73.98765)
    expect(market_1.vendor_count).to eq(10)
  end
end