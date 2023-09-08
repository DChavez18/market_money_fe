require "rails_helper"

RSpec.describe "Vendor Show Page" do
  describe "as a visitor" do
    before :each do
      @vendor = MarketFacade.new.get_vendor(55823)
    end
    it "displays the vendors name, contact info, whether they accept credit and a description of what they sell" do
      visit "/vendors/55823"

      expect(page).to have_content(@vendor.name)
    end
  end
end