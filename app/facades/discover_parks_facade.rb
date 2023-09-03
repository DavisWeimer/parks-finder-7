class DiscoverParksFacade < ApplicationController
  def self.find_parks_by_state(state_code)
    ParksService.parks_by_state(state_code)[:data].map do |park_data|
      Park.new(park_data)
    end
  end
end