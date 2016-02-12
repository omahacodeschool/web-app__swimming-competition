MyApp.get "/game_form" do
  erb :"game_views/game_form"
end

MyApp.post "/add_game" do
  x = Game.new
  x.game_name = params["game_name"]
  x.save

  erb :"game_views/add_success"
end

MyApp.get "/game_list" do
  erb :"game_views/games_list"
end
