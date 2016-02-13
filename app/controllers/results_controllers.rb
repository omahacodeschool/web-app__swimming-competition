MyApp.get "/results_form" do
  @games = Game.all
  @gamers = Gamer.all
  erb :"results_views/results_form"
end

MyApp.post "/add_results" do
  x = Result.new
  x.game_id = params["results"]
  x.gamer_id = params["gamer_id"]
  x.completion_time = params["completion_time"]
  x.save
  erb :"results_views/add_success"
end

MyApp.get "/results_list" do
  erb :"results_views/results_list"
end
