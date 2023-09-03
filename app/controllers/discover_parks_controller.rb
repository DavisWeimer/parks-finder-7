class DiscoverParksController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @selected_state = params[:select_state]
    @parks = DiscoverParksFacade.find_parks_by_state(@selected_state)
    @state = us_states.key(@selected_state).to_s
  end

private
  def us_states
    {
      :Alabama => "AL",
      :Alaska => "AK",
      :Arizona => "AZ",
      :Arkansas => "AR",
      :California => "CA",
      :Colorado => "CO",
      :Connecticut => "CT",
      :Delaware => "DE",
      :Florida => "FL",
      :Georgia => "GA",
      :Hawaii => "HI",
      :Idaho => "ID",
      :Illinois => "IL",
      :Indiana => "IN",
      :Iowa => "IA",
      :Kansas => "KS",
      :Kentucky => "KY",
      :Louisiana => "LA",
      :Maine => "ME",
      :Maryland => "MD",
      :Massachusetts => "MA",
      :Michigan => "MI",
      :Minnesota => "MN",
      :Mississippi => "MS",
      :Missouri => "MO",
      :Montana => "MT",
      :Nebraska => "NE",
      :Nevada => "NV",
      :New_Hampshire => "NH",
      :New_Jersey => "NJ",
      :New_Mexico => "NM",
      :New_York => "NY",
      :North_Carolina => "NC",
      :North_Dakota => "ND",
      :Ohio => "OH",
      :Oklahoma => "OK",
      :Oregon => "OR",
      :Pennsylvania => "PA",
      :Rhode_Island => "RI",
      :South_Carolina => "SC",
      :South_Dakota => "SD",
      :Tennessee => "TN",
      :Texas => "TX",
      :Utah => "UT",
      :Vermont => "VT",
      :Virginia => "VA",
      :Washington => "WA",
      :West_Virginia => "WV",
      :Wisconsin => "WI",
      :Wyoming => "WY"
    }
  end
end