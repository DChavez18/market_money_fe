require "rails_helper"

RSpec.describe "Market Index Page" do
  before :each do
    @markets = MarketFacade.new.get_markets
  end
  describe "as a visitor" do
    it "shows me all markets listed with their name, city and state" do
      visit '/markets'
      
      expect(page).to have_content(@markets.first.name)
      expect(page).to have_content(@markets.first.city)
      expect(page).to have_content(@markets.first.state)
    end
    
    it "displays a more info button that when clicked takes me to market show page" do
      @market = MarketFacade.new.get_markets.first
      visit '/markets'

      expect(page).to have_link("More Info")

      first(:link, "More Info").click

      expect(current_path).to eq("/markets/322458")
    end
  end
end