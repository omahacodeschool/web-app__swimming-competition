MyApp.get "/gamer_form" do
  erb :"gamers_views/gamer_form"
end

MyApp.get "/add_gamer" do
  x = Gamer.new
  x.name = params["gamer_name"]
  x.save

  erb :"gamers_views/add_success"
end

