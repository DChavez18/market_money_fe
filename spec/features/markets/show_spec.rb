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
  end
end