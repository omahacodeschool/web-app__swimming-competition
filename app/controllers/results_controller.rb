#MyApp.get "/results/create" do
  #erb :"new_result"
  #x = Result.new
  #x.penguin_id = ????
  #x.event_id = ????
  #x.time = params["new_time"]
  #x.save
  #erb :"results/new_result"
#end

MyApp.get "/results" do
  @results = Result.all
  erb :"results/all_results"
end
