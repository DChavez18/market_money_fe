require "rails_helper"

RSpec.describe "Market's Show page" do
  before :each do
    @market = MarketFacade.new.get_market(322458)
  end
  describe "as a visitor" do
    it "displays the markets name and readable address" do
      visit "/markets/322458"
      
      expect(page).to have_content(@market.name)
      expect(page).to have_content(@market.street.strip)
      expect(page).to have_content(@market.city)
      expect(page).to have_content(@market.state)
      expect(page).to have_content(@market.zip)
    end
    
    it "displays a list of all the vendors that belong to that market and each vendor's name is a link to that vendors show page" do
      @vendors = MarketFacade.new.get_market_vendors(322458)
      visit "/markets/322458"
      
      expect(page).to have_content("Vendors at our Market")
      expect(page).to have_link(@vendors.first.name)
    end
  end
end