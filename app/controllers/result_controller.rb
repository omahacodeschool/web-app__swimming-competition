MyApp.get "/results" do
	@list_results = Result.all
  erb :"results/list_results"
end

MyApp.get "/results/add_new" do
  erb :"results/add_result"
end

MyApp.get "/add_result" do
	x = Result.new
	x.event_id = params[:event_id]
	x.competitor_id = params[:competitor_id]
	x.time = params[:time]
	x.save
  erb :"success"
end