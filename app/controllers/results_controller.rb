MyApp.get "/results/new" do
  erb :"results/new_result" 
end

MyApp.get "/results/create" do
  x = Result.new
  x.penguin_id = params["new_penguin_id"]
  x.event_id = params["new_event_id"]
  x.time = params["new_time"]
  x.save
  redirect "/results"
end

MyApp.get "/results" do
  @results = Result.all
  erb :"results/all_results"
end

MyApp.get "/results/edit/:id" do
  @result = Result.find_by_id(params[:id])
  erb :"results/edit_result"
end