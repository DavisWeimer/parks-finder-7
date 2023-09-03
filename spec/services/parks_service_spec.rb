require "rails_helper"

RSpec.describe ParksService do
  describe "class methods" do
    it ".parks_by_state", :vcr do
      response = ParksService.parks_by_state("TN")
      
      expect(response).to be_a Hash
      expect(response[:data]).to be_an Array
      
      response[:data].each do |park|
        expect(park).to have_key :fullName
        expect(park[:fullName]).to be_a String

        expect(park).to have_key :description
        expect(park[:description]).to be_a String

        expect(park).to have_key :directionsInfo
        expect(park[:directionsInfo]).to be_a String

        expect(park).to have_key :operatingHours
        expect(park[:operatingHours][0][:standardHours]).to be_a Hash

        expect(park).to have_key :operatingHours
        expect(park[:operatingHours][0][:standardHours]).to be_a Hash
      end
    end
  end
end