class Park
  attr_reader :name,
              :description,
              :directions_info,
              :standard_hours
  def initialize(park_data)
    @name = park_data[:fullName]
    @description = park_data[:description]
    @directions_info = park_data[:directionsInfo]
    @standard_hours = park_data[:operatingHours].map { |park_data| [park_data[:name].titleize, park_data[:standardHours]] }.to_h
  end
end