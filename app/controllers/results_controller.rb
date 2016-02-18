MyApp.get "/results/new" do
  @penguins = Penguin.all
  @events = Event.all
  erb :"results/new_result" 
end

MyApp.post "/results/create" do
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
  @penguins = Penguin.all
  @events = Event.all
  erb :"results/edit_result"
end

MyApp.post "/results/process_edit/:id" do
  @result = Result.find_by_id(params[:id])
  @result.penguin_id = params["edit_penguin_id"]
  @result.event_id = params["edit_event_id"]
  @result.time = params["edit_time"]
  @result.save
erb :"updated"
end

MyApp.post "/results/delete/:id" do
  @result = Result.find_by_id(params[:id])
  @result.delete
  erb :"updated"
end

MyApp.get "/results/view/:id" do
  @results = Result.where("event_id" => params[:id])
  @ordered = @results.order("time")
  erb :"results/result_details"
end


