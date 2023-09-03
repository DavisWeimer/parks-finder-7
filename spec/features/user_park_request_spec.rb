require "rails_helper"

RSpec.describe "Parks API", type: :feature do
  describe "#GET" do
    it "can get a list of parks by state code", :vcr do
      user = create(:user)

      visit user_discover_parks_path(user.id)

      expect(page).to have_content("Discover State Parks")

      within "#state_finder" do
        select "Tennessee", from: "select_state"
        click_button "Find Parks"
      end
      expect(current_path).to eq(user_discover_parks_path(user.id))
      save_and_open_page
      within "#parks" do
        expect(page).to have_content("Andrew Johnson National Historic Site")
        expect(page).to have_content("Trail Of Tears National Historic Trail")
      end
    end
  end
end