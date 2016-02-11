MyApp.get "/results" do
  x = Result.new
  x.event_id = params["event_id"]
  x.competitor_id = params["comp_id"]
  x.time = params["time"]
  x.save
  @y = [x.event_id, x.competitor_id, x.time]
  erb :"results/results"
end

MyApp.get "/all_results" do 
  @results = Result.all
  erb :"results/results_list"
end 

MyApp.get "/view_result/:result_id" do 
  @result = Result.find_by_id(params[:result_id])
  erb :"results/single_result"
end
