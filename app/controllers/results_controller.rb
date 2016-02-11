MyApp.get "/results/create" do
  x = Result.new
  x.penguin_id = params["new_penguin_id"]
  x.event_id = params["new_event_id"]
  x.time = params["new_time"]
  x.save
  erb :"results/new_result"
end

MyApp.get "/results" do
  @results = Result.all
  erb :"results/all_results"
end
