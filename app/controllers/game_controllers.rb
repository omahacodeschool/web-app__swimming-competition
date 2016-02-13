MyApp.get "/game_form" do
  erb :"game_views/game_form"
end

MyApp.post "/add_game" do
  x = Game.new
  x.game_name = params["game_name"]
  x.save
  erb :"game_views/add_success"
end

MyApp.get "/games_list" do
  @games = Game.all
  erb :"game_views/games_list"
end

MyApp.get "/game/:game_id" do
  @game = Game.find_by_id(params[:game_id])
  erb :"game_views/view_game"
end