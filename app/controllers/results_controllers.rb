MyApp.get "/results" do
  x = Result.new
  x.event_id = params["event_id"]
  x.competitor_id = params["comp_id"]
  x.time = params["time"]
  x.save
  @y = [x.event_id, x.competitor_id, x.time]
  erb :"/results"
end