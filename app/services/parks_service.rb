class ParksService
  def self.conn
    Faraday.new(url: "https://developer.nps.gov/api/v1/") do |faraday|
      faraday.headers["x-api-key"] = Rails.application.credentials.nps[:key]
    end
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.parks_by_state(state_code)
    get_url("parks?stateCode=#{state_code}")
  end
end