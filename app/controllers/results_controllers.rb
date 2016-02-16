MyApp.get "/results_form" do
  @games = Game.all
  @gamers = Gamer.all
  erb :"results_views/results_form"
end

MyApp.post "/add_results" do
  x = Result.new
  x.game_id = params["game_id"]
  x.gamer_id = params["gamer_id"]
  x.completion_time = params["completion_time"]
  x.save
  erb :"results_views/add_success"
end

MyApp.get "/results_list" do
  @results = Result.all
  erb :"results_views/results_list"
end

MyApp.get "edit_results_form/:result_id" do
  @result = Result.find_by_id(params[:result_id])
  erb :"results_views/edit_results_form"
end

MyApp.post "/delete_result/:result_id" do
  @result = Result.find_by_id(params[:result_id])
  @result.delete
  erb :"results_views/delete_success"
end
