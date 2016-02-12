MyApp.get "/gamer_form" do
  erb :"gamers_views/gamer_form"
end

MyApp.post "/add_gamer" do
  x = Gamer.new
  x.last_name = params["last_name"]
  x.first_name = params["first_name"]
  x.squad_id = params["squad_id"]
  x.save

  erb :"gamers_views/add_success"
end

MyApp.get "/gamers_list" do
  erb :"gamers_views/gamers_list"
end
